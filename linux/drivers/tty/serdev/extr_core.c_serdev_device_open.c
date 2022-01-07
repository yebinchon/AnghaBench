
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; int dev; } ;
struct TYPE_2__ {int (* open ) (struct serdev_controller*) ;int (* close ) (struct serdev_controller*) ;} ;


 int EINVAL ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int stub1 (struct serdev_controller*) ;
 int stub2 (struct serdev_controller*) ;

int serdev_device_open(struct serdev_device *serdev)
{
 struct serdev_controller *ctrl = serdev->ctrl;
 int ret;

 if (!ctrl || !ctrl->ops->open)
  return -EINVAL;

 ret = ctrl->ops->open(ctrl);
 if (ret)
  return ret;

 ret = pm_runtime_get_sync(&ctrl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(&ctrl->dev);
  goto err_close;
 }

 return 0;

err_close:
 if (ctrl->ops->close)
  ctrl->ops->close(ctrl);

 return ret;
}
