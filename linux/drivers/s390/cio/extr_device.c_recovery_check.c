
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pam; } ;
struct TYPE_8__ {TYPE_2__ pmcw; } ;
struct subchannel {int opm; int vpm; TYPE_3__ schib; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct ccw_device {int ccwlock; TYPE_5__* private; TYPE_1__ dev; } ;
struct TYPE_9__ {int devno; int ssid; } ;
struct TYPE_10__ {int state; TYPE_4__ dev_id; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 int DEV_EVENT_VERIFY ;



 int dev_fsm_event (struct ccw_device*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int recovery_check(struct device *dev, void *data)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct subchannel *sch;
 int *redo = data;

 spin_lock_irq(cdev->ccwlock);
 switch (cdev->private->state) {
 case 128:
  sch = to_subchannel(cdev->dev.parent);
  if ((sch->schib.pmcw.pam & sch->opm) == sch->vpm)
   break;

 case 130:
  CIO_MSG_EVENT(3, "recovery: trigger 0.%x.%04x\n",
         cdev->private->dev_id.ssid,
         cdev->private->dev_id.devno);
  dev_fsm_event(cdev, DEV_EVENT_VERIFY);
  *redo = 1;
  break;
 case 129:
  *redo = 1;
  break;
 }
 spin_unlock_irq(cdev->ccwlock);

 return 0;
}
