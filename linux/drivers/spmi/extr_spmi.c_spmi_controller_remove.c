
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_controller {int dev; } ;


 int device_del (int *) ;
 int device_for_each_child (int *,int *,int ) ;
 int spmi_ctrl_remove_device ;

void spmi_controller_remove(struct spmi_controller *ctrl)
{
 int dummy;

 if (!ctrl)
  return;

 dummy = device_for_each_child(&ctrl->dev, ((void*)0),
          spmi_ctrl_remove_device);
 device_del(&ctrl->dev);
}
