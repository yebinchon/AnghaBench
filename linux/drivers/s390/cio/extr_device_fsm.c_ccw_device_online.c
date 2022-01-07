
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct subchannel {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_1__* private; TYPE_2__ dev; } ;
typedef scalar_t__ addr_t ;
struct TYPE_3__ {scalar_t__ state; } ;


 int DEV_EVENT_NOTOPER ;
 scalar_t__ DEV_STATE_BOXED ;
 scalar_t__ DEV_STATE_OFFLINE ;
 scalar_t__ DEV_STATE_VERIFY ;
 int EINVAL ;
 int ENODEV ;
 int ccw_device_verify_start (struct ccw_device*) ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 struct subchannel* to_subchannel (int ) ;

int
ccw_device_online(struct ccw_device *cdev)
{
 struct subchannel *sch;
 int ret;

 if ((cdev->private->state != DEV_STATE_OFFLINE) &&
     (cdev->private->state != DEV_STATE_BOXED))
  return -EINVAL;
 sch = to_subchannel(cdev->dev.parent);
 ret = cio_enable_subchannel(sch, (u32)(addr_t)sch);
 if (ret != 0) {

  if (ret == -ENODEV)
   dev_fsm_event(cdev, DEV_EVENT_NOTOPER);
  return ret;
 }

 cdev->private->state = DEV_STATE_VERIFY;
 ccw_device_verify_start(cdev);
 return 0;
}
