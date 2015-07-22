//
//  ViewController.swift
//  PageMenuTesting
//
//  Created by vichhai on 6/27/15.
//  Copyright (c) 2015 kan vichhai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.barTintColor = UIColor.grayColor()
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
//        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
//        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
//        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
//        
        
        title = "Page Menu Testing"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem (title: "<", style: .Done, target: self, action: "leftButtonClicked")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: ">", style: .Done, target: self, action: "RightButtonCliced")
        
        
        var controllerColleciton : [UIViewController] = []
        
        var view1 : FruitViewController = FruitViewController(nibName: "FruitViewController", bundle: nil)
        view1.title = "Fruit"
        
        var view2 : AnimalViewController = AnimalViewController(nibName: "AnimalViewController", bundle: nil)
        view2.title = "Animal"
        
        var view3 : PlanetViewController = PlanetViewController(nibName: "PlanetViewController", bundle: nil)
        view3.title = "Planet"
        
        controllerColleciton.append(view1)
        controllerColleciton.append(view2)
        controllerColleciton.append(view3)
        
        // Customize menu (Optional)
        var parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .ViewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .MenuHeight(40.0),
            .MenuItemWidth(90.0),
            .CenterMenuItems(true)
        ]
        
        pageMenu = CAPSPageMenu(viewControllers: controllerColleciton, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        self.view.addSubview(pageMenu!.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func leftButtonClicked() {
        
    }
    
    func RightButtonCliced() {
        
    }

}

