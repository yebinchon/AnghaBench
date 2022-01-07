
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int __unregister_subdev ;
 int device_for_each_child (int *,int *,int ) ;

__attribute__((used)) static int fsl_usb2_mph_dr_of_remove(struct platform_device *ofdev)
{
 device_for_each_child(&ofdev->dev, ((void*)0), __unregister_subdev);
 return 0;
}
