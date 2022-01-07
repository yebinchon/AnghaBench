
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int close; int open; int evbit; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int EV_ABS ;
 int cmpc_accel_close ;
 int cmpc_accel_open ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void cmpc_accel_idev_init(struct input_dev *inputdev)
{
 set_bit(EV_ABS, inputdev->evbit);
 input_set_abs_params(inputdev, ABS_X, 0, 255, 8, 0);
 input_set_abs_params(inputdev, ABS_Y, 0, 255, 8, 0);
 input_set_abs_params(inputdev, ABS_Z, 0, 255, 8, 0);
 inputdev->open = cmpc_accel_open;
 inputdev->close = cmpc_accel_close;
}
