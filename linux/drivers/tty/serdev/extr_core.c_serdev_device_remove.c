
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; struct serdev_controller* ctrl; } ;
struct serdev_controller {int * serdev; } ;


 int device_unregister (int *) ;

void serdev_device_remove(struct serdev_device *serdev)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 device_unregister(&serdev->dev);
 ctrl->serdev = ((void*)0);
}
