//
//  ViewController.swift
//  CatGame
//
//  Created by Денис Винокуров on 28.04.2021.
//

import UIKit

class ViewController: UIViewController {

    private let runningButton = UIButton()
    private let size = CGSize(width: 100, height: 100)
    private var origin = CGPoint(x: 0, y: 0)
    private var screenWidth: CGFloat = 0
    private var screenHeight: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = self.view.frame.width
        screenHeight = self.view.frame.height
        runningButton.addTarget(self, action: #selector(runningButtonAction), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        runningButton.backgroundColor = .systemIndigo
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        origin = CGPoint(x: CGFloat.random(in: 0..<(screenWidth - CGFloat(runningButton.frame.width))), y: CGFloat.random(in: 0..<(screenHeight - CGFloat(runningButton.frame.height))))
        runningButton.frame = CGRect(origin: origin, size: size)
        runningButton.layer.cornerRadius = runningButton.frame.height / 2
        self.view.addSubview(runningButton)
        
    }
    
    @objc func runningButtonAction() {
        
        self.view.willRemoveSubview(runningButton)
        origin = CGPoint(x: CGFloat.random(in: 0..<(screenWidth - CGFloat(runningButton.frame.width))), y: CGFloat.random(in: 0..<(screenHeight - CGFloat(runningButton.frame.height))))
        runningButton.frame = CGRect(origin: origin, size: size)
        self.view.addSubview(runningButton)
        
    }


}

