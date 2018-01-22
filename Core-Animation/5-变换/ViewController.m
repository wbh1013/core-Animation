//
//  ViewController.m
//  5-变换
//
//  Created by hjy on 2018/1/22.
//  Copyright © 2018年 baohong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *layerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
 
//        [UIView animateWithDuration:1 animations:^{
//            [self shear];
//        } completion:^(BOOL finished) {
//            [UIView animateWithDuration:1 animations:^{
//                [self indentity];
//            }];
//        }];
    
    [UIView animateWithDuration:1 animations:^{
        [self transform3DRotate];
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:1 animations:^{
           [self transform3Dindentity];
        }];
    }];

}
/*============================================CATransform3D======================================================*/


-(void)transform3DRotate{
    CATransform3D transform = CATransform3DMakeRotation(60 / 180.0 * M_PI, 0, 1, 0);
    self.layerView.layer.transform = transform;
}

#pragma mark - 还原
-(void)transform3Dindentity{
    self.layerView.layer.transform = CATransform3DIdentity;
}

/*==========================================CGAffineTransform====================================================*/
#pragma mark - 斜切
-(void)shear{
    
    self.layerView.layer.affineTransform = CGAffineTransformMakeScale(1, 0);
}
#pragma mark - 旋转 缩放平移
-(void)scaleRotateSlate{
    
    CGAffineTransform  transform = CGAffineTransformIdentity;
    transform = CGAffineTransformTranslate(transform, 200, 0);
    transform = CGAffineTransformScale(transform, 0.5, 0.5);
    transform = CGAffineTransformRotate(transform, M_PI / 180.0 * 30);
    self.layerView.layer.affineTransform = transform;
    
}
#pragma mark - 旋转
-(void)rotationMPI4{
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
    self.layerView.layer.affineTransform = transform;
}

#pragma mark - 还原
-(void)indentity{
    CGAffineTransform transform = CGAffineTransformIdentity;
    self.layerView.layer.affineTransform = transform;
}
@end
