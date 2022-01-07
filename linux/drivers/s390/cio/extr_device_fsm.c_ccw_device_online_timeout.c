
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; int (* handler ) (struct ccw_device*,int ,int ) ;} ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;
struct TYPE_2__ {int iretry; int intparm; int state; int async_kill_io_rc; } ;


 int DEV_EVENT_NOTOPER ;
 int DEV_STATE_TIMEOUT_KILL ;
 int EBUSY ;
 int ERR_PTR (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int ccw_device_cancel_halt_clear (struct ccw_device*) ;
 int ccw_device_set_timeout (struct ccw_device*,int) ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 int stub1 (struct ccw_device*,int ,int ) ;

__attribute__((used)) static void
ccw_device_online_timeout(struct ccw_device *cdev, enum dev_event dev_event)
{
 int ret;

 ccw_device_set_timeout(cdev, 0);
 cdev->private->iretry = 255;
 cdev->private->async_kill_io_rc = -ETIMEDOUT;
 ret = ccw_device_cancel_halt_clear(cdev);
 if (ret == -EBUSY) {
  ccw_device_set_timeout(cdev, 3*HZ);
  cdev->private->state = DEV_STATE_TIMEOUT_KILL;
  return;
 }
 if (ret)
  dev_fsm_event(cdev, DEV_EVENT_NOTOPER);
 else if (cdev->handler)
  cdev->handler(cdev, cdev->private->intparm,
         ERR_PTR(-ETIMEDOUT));
}
