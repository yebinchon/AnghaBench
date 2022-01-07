
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int dev; } ;
struct TYPE_10__ {TYPE_4__ pmcw; } ;
struct TYPE_8__ {int ssid; int sch_no; } ;
struct subchannel {int lock; TYPE_5__ schib; TYPE_3__ schid; int todo_work; int dev; } ;
struct ccw_device {int dev; TYPE_2__* private; } ;
struct ccw_dev_id {int devno; int ssid; } ;
typedef enum io_sch_action { ____Placeholder_io_sch_action } io_sch_action ;
struct TYPE_6__ {int resuming; } ;
struct TYPE_7__ {TYPE_1__ flags; int state; int todo_work; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int,int) ;
 int DEV_EVENT_NOTOPER ;
 int DEV_STATE_SENSE_ID ;
 int EAGAIN ;
 int ccw_device_move_to_orph (struct ccw_device*) ;
 int ccw_device_move_to_sch (struct ccw_device*,struct subchannel*) ;
 int ccw_device_set_disconnected (struct ccw_device*) ;
 int ccw_device_set_notoper (struct ccw_device*) ;
 int ccw_device_trigger_reprobe (struct ccw_device*) ;
 int ccw_device_unregister (struct ccw_device*) ;
 int css_sch_device_unregister (struct subchannel*) ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 int device_is_registered (int *) ;
 struct ccw_device* get_ccwdev_by_dev_id (struct ccw_dev_id*) ;
 int io_subchannel_verify (struct subchannel*) ;
 int put_device (int *) ;
 int sch_create_and_recog_new_device (struct subchannel*) ;
 int sch_get_action (struct subchannel*) ;
 struct ccw_device* sch_get_cdev (struct subchannel*) ;
 int sch_set_cdev (struct subchannel*,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static int io_subchannel_sch_event(struct subchannel *sch, int process)
{
 unsigned long flags;
 struct ccw_device *cdev;
 struct ccw_dev_id dev_id;
 enum io_sch_action action;
 int rc = -EAGAIN;

 spin_lock_irqsave(sch->lock, flags);
 if (!device_is_registered(&sch->dev))
  goto out_unlock;
 if (work_pending(&sch->todo_work))
  goto out_unlock;
 cdev = sch_get_cdev(sch);
 if (cdev && work_pending(&cdev->private->todo_work))
  goto out_unlock;
 action = sch_get_action(sch);
 CIO_MSG_EVENT(2, "event: sch 0.%x.%04x, process=%d, action=%d\n",
        sch->schid.ssid, sch->schid.sch_no, process,
        action);

 switch (action) {
 case 131:

  ccw_device_trigger_reprobe(cdev);
  rc = 0;
  goto out_unlock;
 case 128:

  io_subchannel_verify(sch);
  rc = 0;
  goto out_unlock;
 case 135:
  ccw_device_set_disconnected(cdev);
  rc = 0;
  goto out_unlock;
 case 132:
 case 133:
  ccw_device_set_disconnected(cdev);
  break;
 case 129:
 case 130:
  if (!cdev)
   break;
  if (cdev->private->state == DEV_STATE_SENSE_ID) {





   dev_fsm_event(cdev, DEV_EVENT_NOTOPER);
  } else
   ccw_device_set_notoper(cdev);
  break;
 case 134:
  rc = 0;
  goto out_unlock;
 default:
  break;
 }
 spin_unlock_irqrestore(sch->lock, flags);

 if (!process)
  goto out;

 switch (action) {
 case 132:
 case 133:

  rc = ccw_device_move_to_orph(cdev);
  if (rc)
   goto out;
  break;
 case 129:
  spin_lock_irqsave(sch->lock, flags);
  if (cdev->private->flags.resuming) {

   rc = 0;
   goto out_unlock;
  }
  sch_set_cdev(sch, ((void*)0));
  spin_unlock_irqrestore(sch->lock, flags);

  ccw_device_unregister(cdev);
  break;
 default:
  break;
 }

 switch (action) {
 case 132:
 case 130:
  if (!cdev || !cdev->private->flags.resuming)
   css_sch_device_unregister(sch);
  break;
 case 133:
 case 129:
 case 136:
  dev_id.ssid = sch->schid.ssid;
  dev_id.devno = sch->schib.pmcw.dev;
  cdev = get_ccwdev_by_dev_id(&dev_id);
  if (!cdev) {
   sch_create_and_recog_new_device(sch);
   break;
  }
  rc = ccw_device_move_to_sch(cdev, sch);
  if (rc) {

   put_device(&cdev->dev);
   goto out;
  }
  spin_lock_irqsave(sch->lock, flags);
  ccw_device_trigger_reprobe(cdev);
  spin_unlock_irqrestore(sch->lock, flags);

  put_device(&cdev->dev);
  break;
 default:
  break;
 }
 return 0;

out_unlock:
 spin_unlock_irqrestore(sch->lock, flags);
out:
 return rc;
}
