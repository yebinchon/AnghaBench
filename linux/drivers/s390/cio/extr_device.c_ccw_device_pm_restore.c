
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct subchannel {int lock; int schid; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {TYPE_5__* drv; scalar_t__ online; TYPE_4__* private; TYPE_1__ dev; } ;
struct TYPE_10__ {int (* restore ) (struct ccw_device*) ;} ;
struct TYPE_8__ {int devno; int ssid; } ;
struct TYPE_7__ {int donotify; } ;
struct TYPE_9__ {int state; TYPE_3__ dev_id; scalar_t__ cmb; int wait_q; TYPE_2__ flags; } ;


 int CDEV_TODO_REBIND ;
 int CDEV_TODO_UNREG ;
 int CIO_MSG_EVENT (int,char*,int ,int ,int) ;
 int CIO_OPER ;



 int ENODEV ;
 scalar_t__ NOTIFY_BAD ;
 int __ccw_device_pm_restore (struct ccw_device*) ;
 scalar_t__ ccw_device_notify (struct ccw_device*,int ) ;
 scalar_t__ ccw_device_online (struct ccw_device*) ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 int ccw_device_test_sense_data (struct ccw_device*) ;
 int ccw_device_update_sense_data (struct ccw_device*) ;
 int ccw_set_cmf (struct ccw_device*,int) ;
 scalar_t__ cio_is_console (int ) ;
 int dev_fsm_final_state (struct ccw_device*) ;
 int resume_handle_boxed (struct ccw_device*) ;
 int resume_handle_disc (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct subchannel* to_subchannel (int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int ccw_device_pm_restore(struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct subchannel *sch;
 int ret = 0;

 __ccw_device_pm_restore(cdev);
 sch = to_subchannel(cdev->dev.parent);
 spin_lock_irq(sch->lock);
 if (cio_is_console(sch->schid))
  goto out_restore;


 switch (cdev->private->state) {
 case 129:
 case 128:
  cdev->private->flags.donotify = 0;
  break;
 case 130:
  ret = resume_handle_boxed(cdev);
  if (ret)
   goto out_unlock;
  goto out_restore;
 default:
  ret = resume_handle_disc(cdev);
  if (ret)
   goto out_unlock;
  goto out_restore;
 }

 if (!ccw_device_test_sense_data(cdev)) {
  ccw_device_update_sense_data(cdev);
  ccw_device_sched_todo(cdev, CDEV_TODO_REBIND);
  ret = -ENODEV;
  goto out_unlock;
 }
 if (!cdev->online)
  goto out_unlock;

 if (ccw_device_online(cdev)) {
  ret = resume_handle_disc(cdev);
  if (ret)
   goto out_unlock;
  goto out_restore;
 }
 spin_unlock_irq(sch->lock);
 wait_event(cdev->private->wait_q, dev_fsm_final_state(cdev));
 spin_lock_irq(sch->lock);

 if (ccw_device_notify(cdev, CIO_OPER) == NOTIFY_BAD) {
  ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
  ret = -ENODEV;
  goto out_unlock;
 }


 if (cdev->private->cmb) {
  spin_unlock_irq(sch->lock);
  ret = ccw_set_cmf(cdev, 1);
  spin_lock_irq(sch->lock);
  if (ret) {
   CIO_MSG_EVENT(2, "resume: cdev 0.%x.%04x: cmf failed "
          "(rc=%d)\n", cdev->private->dev_id.ssid,
          cdev->private->dev_id.devno, ret);
   ret = 0;
  }
 }

out_restore:
 spin_unlock_irq(sch->lock);
 if (cdev->online && cdev->drv && cdev->drv->restore)
  ret = cdev->drv->restore(cdev);
 return ret;

out_unlock:
 spin_unlock_irq(sch->lock);
 return ret;
}
