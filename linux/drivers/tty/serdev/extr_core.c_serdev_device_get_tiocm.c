
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_tiocm ) (struct serdev_controller*) ;} ;


 int ENOTSUPP ;
 int stub1 (struct serdev_controller*) ;

int serdev_device_get_tiocm(struct serdev_device *serdev)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->get_tiocm)
  return -ENOTSUPP;

 return ctrl->ops->get_tiocm(ctrl);
}
