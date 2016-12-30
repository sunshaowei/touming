//
//  ViewController.m
//  touming
//
//  Created by kuanter on 2016/12/30.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   UIView* _alphaView = [[UIView alloc]initWithFrame:self.view.bounds];
    
    _alphaView.backgroundColor = [[UIColor yellowColor]colorWithAlphaComponent:0.7];
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:_alphaView.frame];
    
    [path appendPath:[[UIBezierPath bezierPathWithRoundedRect: CGRectMake(100, 100, 100, 100) cornerRadius:50]bezierPathByReversingPath]];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    shapeLayer.path = path.CGPath;
    
    [_alphaView.layer setMask:shapeLayer];
    
    [self.view addSubview:_alphaView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
