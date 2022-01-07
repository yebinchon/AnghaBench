
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_room ) (struct serdev_controller*) ;} ;


 int stub1 (struct serdev_controller*) ;

int serdev_device_write_room(struct serdev_device *serdev)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->write_room)
  return 0;

 return serdev->ctrl->ops->write_room(ctrl);
}
