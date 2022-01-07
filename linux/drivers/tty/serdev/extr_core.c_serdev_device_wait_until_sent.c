
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* wait_until_sent ) (struct serdev_controller*,long) ;} ;


 int stub1 (struct serdev_controller*,long) ;

void serdev_device_wait_until_sent(struct serdev_device *serdev, long timeout)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->wait_until_sent)
  return;

 ctrl->ops->wait_until_sent(ctrl, timeout);
}
