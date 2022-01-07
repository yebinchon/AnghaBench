
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_flow_control ) (struct serdev_controller*,int) ;} ;


 int stub1 (struct serdev_controller*,int) ;

void serdev_device_set_flow_control(struct serdev_device *serdev, bool enable)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->set_flow_control)
  return;

 ctrl->ops->set_flow_control(ctrl, enable);
}
