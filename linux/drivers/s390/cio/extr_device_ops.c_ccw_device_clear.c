
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ena; } ;
struct TYPE_6__ {TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct TYPE_8__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_4__ dev; } ;
struct TYPE_7__ {scalar_t__ state; unsigned long intparm; } ;


 scalar_t__ DEV_STATE_NOT_OPER ;
 scalar_t__ DEV_STATE_ONLINE ;
 scalar_t__ DEV_STATE_W4SENSE ;
 int EINVAL ;
 int ENODEV ;
 int cio_clear (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

int ccw_device_clear(struct ccw_device *cdev, unsigned long intparm)
{
 struct subchannel *sch;
 int ret;

 if (!cdev || !cdev->dev.parent)
  return -ENODEV;
 sch = to_subchannel(cdev->dev.parent);
 if (!sch->schib.pmcw.ena)
  return -EINVAL;
 if (cdev->private->state == DEV_STATE_NOT_OPER)
  return -ENODEV;
 if (cdev->private->state != DEV_STATE_ONLINE &&
     cdev->private->state != DEV_STATE_W4SENSE)
  return -EINVAL;

 ret = cio_clear(sch);
 if (ret == 0)
  cdev->private->intparm = intparm;
 return ret;
}
