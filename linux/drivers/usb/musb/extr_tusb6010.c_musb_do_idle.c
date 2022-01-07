
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct musb {int port1_status; int lock; int gadget_driver; int is_active; TYPE_2__* xceiv; int controller; int idle_timeout; int a_wait_bcon; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;




 int TUSB_PRCM_WBUS ;
 int TUSB_PRCM_WHOSTDISCON ;
 int TUSB_PRCM_WID ;
 int TUSB_PRCM_WVBUS ;
 int dev_dbg (int ,char*,int ) ;
 int dev_timer ;
 struct musb* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ is_host_active (struct musb*) ;
 int jiffies ;
 struct musb* musb ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after (int ,int ) ;
 int tusb_allow_idle (struct musb*,int) ;
 int tusb_musb_set_vbus (struct musb*,int ) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static void musb_do_idle(struct timer_list *t)
{
 struct musb *musb = from_timer(musb, t, dev_timer);
 unsigned long flags;

 spin_lock_irqsave(&musb->lock, flags);

 switch (musb->xceiv->otg->state) {
 case 128:
  if ((musb->a_wait_bcon != 0)
   && (musb->idle_timeout == 0
    || time_after(jiffies, musb->idle_timeout))) {
   dev_dbg(musb->controller, "Nothing connected %s, turning off VBUS\n",
     usb_otg_state_string(musb->xceiv->otg->state));
  }

 case 129:
  tusb_musb_set_vbus(musb, 0);
 default:
  break;
 }

 if (!musb->is_active) {
  u32 wakeups;


  if (is_host_active(musb) && (musb->port1_status >> 16))
   goto done;

  if (!musb->gadget_driver) {
   wakeups = 0;
  } else {
   wakeups = TUSB_PRCM_WHOSTDISCON
    | TUSB_PRCM_WBUS
     | TUSB_PRCM_WVBUS;
   wakeups |= TUSB_PRCM_WID;
  }
  tusb_allow_idle(musb, wakeups);
 }
done:
 spin_unlock_irqrestore(&musb->lock, flags);
}
