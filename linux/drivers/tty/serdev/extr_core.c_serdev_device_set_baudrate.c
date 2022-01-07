
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* set_baudrate ) (struct serdev_controller*,unsigned int) ;} ;


 unsigned int stub1 (struct serdev_controller*,unsigned int) ;

unsigned int serdev_device_set_baudrate(struct serdev_device *serdev, unsigned int speed)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->set_baudrate)
  return 0;

 return ctrl->ops->set_baudrate(ctrl, speed);

}
