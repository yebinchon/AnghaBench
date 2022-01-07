
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; int dev; } ;
struct TYPE_2__ {int (* close ) (struct serdev_controller*) ;} ;


 int pm_runtime_put (int *) ;
 int stub1 (struct serdev_controller*) ;

void serdev_device_close(struct serdev_device *serdev)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->close)
  return;

 pm_runtime_put(&ctrl->dev);

 ctrl->ops->close(ctrl);
}
