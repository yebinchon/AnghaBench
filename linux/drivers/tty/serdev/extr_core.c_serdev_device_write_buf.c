
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {struct serdev_controller* ctrl; } ;
struct serdev_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_buf ) (struct serdev_controller*,unsigned char const*,size_t) ;} ;


 int EINVAL ;
 int stub1 (struct serdev_controller*,unsigned char const*,size_t) ;

int serdev_device_write_buf(struct serdev_device *serdev,
       const unsigned char *buf, size_t count)
{
 struct serdev_controller *ctrl = serdev->ctrl;

 if (!ctrl || !ctrl->ops->write_buf)
  return -EINVAL;

 return ctrl->ops->write_buf(ctrl, buf, count);
}
