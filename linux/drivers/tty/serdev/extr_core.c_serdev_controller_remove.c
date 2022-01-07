
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_controller {int dev; } ;


 int device_del (int *) ;
 int device_for_each_child (int *,int *,int ) ;
 int pm_runtime_disable (int *) ;
 int serdev_remove_device ;

void serdev_controller_remove(struct serdev_controller *ctrl)
{
 int dummy;

 if (!ctrl)
  return;

 dummy = device_for_each_child(&ctrl->dev, ((void*)0),
          serdev_remove_device);
 pm_runtime_disable(&ctrl->dev);
 device_del(&ctrl->dev);
}
