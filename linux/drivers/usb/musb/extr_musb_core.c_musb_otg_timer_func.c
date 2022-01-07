
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct musb {int lock; TYPE_2__* xceiv; int is_active; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;




 int OTG_STATE_A_WAIT_VFALL ;
 int OTG_STATE_B_PERIPHERAL ;

 struct musb* from_timer (int ,struct timer_list*,int ) ;
 struct musb* musb ;
 int musb_dbg (struct musb*,char*,...) ;
 int musb_g_disconnect (struct musb*) ;
 int musb_platform_set_vbus (struct musb*,int ) ;
 int otg_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static void musb_otg_timer_func(struct timer_list *t)
{
 struct musb *musb = from_timer(musb, t, otg_timer);
 unsigned long flags;

 spin_lock_irqsave(&musb->lock, flags);
 switch (musb->xceiv->otg->state) {
 case 128:
  musb_dbg(musb,
   "HNP: b_wait_acon timeout; back to b_peripheral");
  musb_g_disconnect(musb);
  musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
  musb->is_active = 0;
  break;
 case 130:
 case 129:
  musb_dbg(musb, "HNP: %s timeout",
   usb_otg_state_string(musb->xceiv->otg->state));
  musb_platform_set_vbus(musb, 0);
  musb->xceiv->otg->state = OTG_STATE_A_WAIT_VFALL;
  break;
 default:
  musb_dbg(musb, "HNP: Unhandled mode %s",
   usb_otg_state_string(musb->xceiv->otg->state));
 }
 spin_unlock_irqrestore(&musb->lock, flags);
}
