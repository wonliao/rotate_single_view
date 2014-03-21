//
//  test12SecondViewController.m
//  test12
//
//  Created by wonliao on 2014/3/21.
//  Copyright (c) 2014年 wonliao. All rights reserved.
//

#import "test12SecondViewController.h"

@interface test12SecondViewController ()

@end

@implementation test12SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver: self selector:   @selector(deviceOrientationDidChange:) name: UIDeviceOrientationDidChangeNotification object: nil];
}

- (void)deviceOrientationDidChange:(NSNotification *)notification
{
    
    // 動畫效果
    //[UIView animateWithDuration:0.5 animations:^{
        switch ([UIDevice currentDevice].orientation) {
            case UIDeviceOrientationLandscapeLeft:      // 3
                self.view.transform = CGAffineTransformMakeRotation(M_PI_2 * 1);
                break;
            case UIDeviceOrientationLandscapeRight:     // 4
                self.view.transform = CGAffineTransformMakeRotation(M_PI_2 * 3);
                break;
            case UIDeviceOrientationPortraitUpsideDown: // 2
            case UIDeviceOrientationPortrait:           // 1
                self.view.transform = CGAffineTransformMakeRotation(M_PI_2 * 0);
                break;
            default:
                break;
        }
        
       
        [self.view setFrame: CGRectMake(0, 0, 320, 480)];
        
    
        [self.view setNeedsDisplay];
    //}];
}

@end
