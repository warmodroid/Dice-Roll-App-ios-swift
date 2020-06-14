//
//  ViewController.swift
//  Dice Roll
//
//  Created by Mohit Agrawal on 13/06/20.
//  Copyright © 2020 Mohit Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTotalSum: UILabel!
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    
    var sum = 2 {
        didSet {
            labelTotalSum.text = "The sum is: " + String(sum)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTotalSum.text = "The sum is: " + String(sum)
    }

    @IBAction func didTapRollDice(_ sender: Any) {
        rollTheDice()
    }
    
    func imageForDice(at number: Int) -> UIImage {
        switch number {
        case 1:
            return UIImage(named: "one")!
        case 2:
            return UIImage(named: "two")!
        case 3:
            return UIImage(named: "three")!
        case 4:
            return UIImage(named: "four")!
        case 5:
            return UIImage(named: "five")!
        default:
            return UIImage(named: "six")!
        }
    }
    
    func rollTheDice() {
            let numberOne = Int.random(in: 1 ... 6)
            let numberTwo = Int.random(in: 1 ... 6)
            
            self.imageViewOne.alpha = 0
            self.imageViewTwo.alpha = 0
            
            UIView.animate(withDuration: 1) {
                self.imageViewOne.image = self.imageForDice(at: numberOne)
                self.imageViewOne.alpha = 1.0
            }
            UIView.animate(withDuration: 1) {
                self.imageViewTwo.image = self.imageForDice(at: numberTwo)
                self.imageViewTwo.alpha = 1.0
            }
            sum = numberOne + numberTwo
    }
    
}

