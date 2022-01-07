
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pam; } ;
struct TYPE_9__ {TYPE_2__ pmcw; } ;
struct subchannel {int lpm; int opm; TYPE_3__ schib; } ;
struct TYPE_10__ {int cu_type; } ;
struct TYPE_7__ {int parent; } ;
struct ccw_device {TYPE_6__* private; TYPE_4__ id; int online; TYPE_1__ dev; } ;
struct TYPE_11__ {int recog_done; int donotify; scalar_t__ resuming; } ;
struct TYPE_12__ {int state; int wait_q; TYPE_5__ flags; } ;


 int CDEV_TODO_REBIND ;

 int DEV_STATE_DISCONNECTED ;
 int DEV_STATE_DISCONNECTED_SENSE_ID ;


 int __recover_lost_chpids (struct subchannel*,int) ;
 int ccw_device_online (struct ccw_device*) ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 int ccw_device_test_sense_data (struct ccw_device*) ;
 int ccw_device_update_sense_data (struct ccw_device*) ;
 scalar_t__ cio_disable_subchannel (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 int io_subchannel_recog_done (struct ccw_device*) ;
 struct subchannel* to_subchannel (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ccw_device_recog_done(struct ccw_device *cdev, int state)
{
 struct subchannel *sch;
 int old_lpm;

 sch = to_subchannel(cdev->dev.parent);

 if (cio_disable_subchannel(sch))
  state = 129;




 old_lpm = sch->lpm;


 if (cio_update_schib(sch))
  state = 129;
 else
  sch->lpm = sch->schib.pmcw.pam & sch->opm;

 if (cdev->private->state == DEV_STATE_DISCONNECTED_SENSE_ID)

  old_lpm = 0;
 if (sch->lpm != old_lpm)
  __recover_lost_chpids(sch, old_lpm);
 if (cdev->private->state == DEV_STATE_DISCONNECTED_SENSE_ID &&
     (state == 129 || state == 130)) {
  cdev->private->flags.recog_done = 1;
  cdev->private->state = DEV_STATE_DISCONNECTED;
  wake_up(&cdev->private->wait_q);
  return;
 }
 if (cdev->private->flags.resuming) {
  cdev->private->state = state;
  cdev->private->flags.recog_done = 1;
  wake_up(&cdev->private->wait_q);
  return;
 }
 switch (state) {
 case 129:
  break;
 case 128:
  if (!cdev->online) {
   ccw_device_update_sense_data(cdev);
   break;
  }
  cdev->private->state = 128;
  cdev->private->flags.recog_done = 1;
  if (ccw_device_test_sense_data(cdev)) {
   cdev->private->flags.donotify = 1;
   ccw_device_online(cdev);
   wake_up(&cdev->private->wait_q);
  } else {
   ccw_device_update_sense_data(cdev);
   ccw_device_sched_todo(cdev, CDEV_TODO_REBIND);
  }
  return;
 case 130:
  if (cdev->id.cu_type != 0) {
   cdev->private->flags.recog_done = 1;
   cdev->private->state = 130;
   wake_up(&cdev->private->wait_q);
   return;
  }
  break;
 }
 cdev->private->state = state;
 io_subchannel_recog_done(cdev);
 wake_up(&cdev->private->wait_q);
}
