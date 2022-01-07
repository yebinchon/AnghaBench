
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
typedef enum serdev_parity { ____Placeholder_serdev_parity } serdev_parity ;
struct TYPE_2__ {int (* set_parity ) (struct serdev_controller*,int) ;} ;


 int ENOTSUPP ;
 int stub1 (struct serdev_controller*,int) ;

int serdev_device_set_parity(struct serdev_device *serdev,
        enum serdev_parity parity)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->set_parity)
  return -ENOTSUPP;

 return ctrl->ops->set_parity(ctrl, parity);
}
