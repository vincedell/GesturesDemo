//
//  ViewController.swift
//  GesturesDemo
//
//  Created by Vincent Dell'Arciprete on 10/15/20.
//  Copyright © 2020 Vincent Dell'Arciprete. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func imageviewTapped(_ sender: UITapGestureRecognizer)
    {
        view.backgroundColor = UIColor.cyan
    }
    

    @IBAction func emojiTapped(_ sender: UIPanGestureRecognizer)
    {
        // 1
        let translation = sender.translation(in: view)

        // 2
        guard let gestureView = sender.view else {
          return
        }

        gestureView.center = CGPoint(
          x: gestureView.center.x + translation.x,
          y: gestureView.center.y + translation.y
        )

        // 3
        sender.setTranslation(.zero, in: view)
}

}
