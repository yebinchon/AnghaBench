
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int speed; } ;
struct bdc {int devstatus; int dev; TYPE_2__ gadget; TYPE_1__* gadget_driver; int func_wake_notify; int lock; } ;
struct TYPE_4__ {int (* resume ) (TYPE_2__*) ;int (* suspend ) (TYPE_2__*) ;} ;





 int BDC_PST (int) ;
 int BDC_TNOTIFY ;
 int DEVICE_SUSPENDED ;
 int FUNC_WAKE_ISSUED ;
 int REMOTE_WAKEUP_ISSUED ;
 int USB_SPEED_SUPER ;
 int USB_SPEED_UNKNOWN ;
 int bdc_function_wake_fh (struct bdc*,int ) ;
 int dev_dbg (int ,char*,...) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void handle_link_state_change(struct bdc *bdc, u32 uspc)
{
 u32 link_state;

 dev_dbg(bdc->dev, "Link state change");
 link_state = BDC_PST(uspc);
 switch (link_state) {
 case 128:
  if ((bdc->gadget.speed != USB_SPEED_UNKNOWN) &&
      bdc->gadget_driver->suspend) {
   dev_dbg(bdc->dev, "Entered Suspend mode\n");
   spin_unlock(&bdc->lock);
   bdc->devstatus |= DEVICE_SUSPENDED;
   bdc->gadget_driver->suspend(&bdc->gadget);
   spin_lock(&bdc->lock);
  }
  break;
 case 129:
  if (bdc->devstatus & REMOTE_WAKEUP_ISSUED) {
     bdc->devstatus &= ~REMOTE_WAKEUP_ISSUED;
   if (bdc->gadget.speed == USB_SPEED_SUPER) {
    bdc_function_wake_fh(bdc, 0);
    bdc->devstatus |= FUNC_WAKE_ISSUED;







    schedule_delayed_work(
      &bdc->func_wake_notify,
      msecs_to_jiffies(BDC_TNOTIFY));
    dev_dbg(bdc->dev, "sched func_wake_notify\n");
   }
  }
  break;

 case 130:
  dev_dbg(bdc->dev, "Resumed from Suspend\n");
  if (bdc->devstatus & DEVICE_SUSPENDED) {
   bdc->gadget_driver->resume(&bdc->gadget);
   bdc->devstatus &= ~DEVICE_SUSPENDED;
  }
  break;
 default:
  dev_dbg(bdc->dev, "link state:%d\n", link_state);
 }
}
