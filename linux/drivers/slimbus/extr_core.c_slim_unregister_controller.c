
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_controller {int id; int dev; } ;


 int ctrl_ida ;
 int device_for_each_child (int ,int *,int ) ;
 int ida_simple_remove (int *,int ) ;
 int slim_ctrl_clk_pause (struct slim_controller*,int,int ) ;
 int slim_ctrl_remove_device ;

int slim_unregister_controller(struct slim_controller *ctrl)
{

 device_for_each_child(ctrl->dev, ((void*)0), slim_ctrl_remove_device);

 slim_ctrl_clk_pause(ctrl, 0, 0);
 ida_simple_remove(&ctrl_ida, ctrl->id);

 return 0;
}
