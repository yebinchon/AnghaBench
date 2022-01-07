
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


struct TYPE_10__ {int sch_no; } ;
struct subchannel {TYPE_4__ schid; } ;
struct irb {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct ccw_device {TYPE_6__* private; int online; TYPE_1__ dev; } ;
struct TYPE_11__ {scalar_t__ donotify; } ;
struct TYPE_9__ {int devno; } ;
struct TYPE_12__ {int state; int wait_q; TYPE_5__ flags; TYPE_3__ dev_id; TYPE_2__* dma_area; } ;
struct TYPE_8__ {int irb; } ;


 int CDEV_TODO_UNREG ;
 int CIO_BOXED ;
 int CIO_GONE ;
 int CIO_MSG_EVENT (int ,char*,int ,int ) ;
 int CIO_NO_PATH ;



 int DEV_STATE_ONLINE ;
 int NOTIFY_OK ;
 int ccw_device_notify (struct ccw_device*,int ) ;
 int ccw_device_oper_notify (struct ccw_device*) ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 int ccw_device_set_disconnected (struct ccw_device*) ;
 int ccw_device_set_timeout (struct ccw_device*,int ) ;
 int cio_disable_subchannel (struct subchannel*) ;
 int memset (int *,int ,int) ;
 struct subchannel* to_subchannel (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ccw_device_done(struct ccw_device *cdev, int state)
{
 struct subchannel *sch;

 sch = to_subchannel(cdev->dev.parent);

 ccw_device_set_timeout(cdev, 0);

 if (state != DEV_STATE_ONLINE)
  cio_disable_subchannel(sch);


 memset(&cdev->private->dma_area->irb, 0, sizeof(struct irb));

 cdev->private->state = state;

 switch (state) {
 case 130:
  CIO_MSG_EVENT(0, "Boxed device %04x on subchannel %04x\n",
         cdev->private->dev_id.devno, sch->schid.sch_no);
  if (cdev->online &&
      ccw_device_notify(cdev, CIO_BOXED) != NOTIFY_OK)
   ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
  cdev->private->flags.donotify = 0;
  break;
 case 128:
  CIO_MSG_EVENT(0, "Device %04x gone on subchannel %04x\n",
         cdev->private->dev_id.devno, sch->schid.sch_no);
  if (ccw_device_notify(cdev, CIO_GONE) != NOTIFY_OK)
   ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
  else
   ccw_device_set_disconnected(cdev);
  cdev->private->flags.donotify = 0;
  break;
 case 129:
  CIO_MSG_EVENT(0, "Disconnected device %04x on subchannel "
         "%04x\n", cdev->private->dev_id.devno,
         sch->schid.sch_no);
  if (ccw_device_notify(cdev, CIO_NO_PATH) != NOTIFY_OK) {
   cdev->private->state = 128;
   ccw_device_sched_todo(cdev, CDEV_TODO_UNREG);
  } else
   ccw_device_set_disconnected(cdev);
  cdev->private->flags.donotify = 0;
  break;
 default:
  break;
 }

 if (cdev->private->flags.donotify) {
  cdev->private->flags.donotify = 0;
  ccw_device_oper_notify(cdev);
 }
 wake_up(&cdev->private->wait_q);
}
