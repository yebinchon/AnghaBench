
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct musb {TYPE_2__* xceiv; int otg_timer; int controller; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;
 int TA_WAIT_BCON (struct musb*) ;
 int del_timer (int *) ;
 int dev_err (int ,char*) ;
 scalar_t__ is_host_active (struct musb*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int musb_dbg (struct musb*,char*,int ,...) ;
 int musb_g_reset (struct musb*) ;
 int musb_recover_from_babble (struct musb*) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static void musb_handle_intr_reset(struct musb *musb)
{
 if (is_host_active(musb)) {
  dev_err(musb->controller, "Babble\n");
  musb_recover_from_babble(musb);
 } else {
  musb_dbg(musb, "BUS RESET as %s",
   usb_otg_state_string(musb->xceiv->otg->state));
  switch (musb->xceiv->otg->state) {
  case 132:
   musb_g_reset(musb);

  case 131:

   musb_dbg(musb, "HNP: in %s, %d msec timeout",
    usb_otg_state_string(musb->xceiv->otg->state),
    TA_WAIT_BCON(musb));
   mod_timer(&musb->otg_timer, jiffies
    + msecs_to_jiffies(TA_WAIT_BCON(musb)));
   break;
  case 133:
   del_timer(&musb->otg_timer);
   musb_g_reset(musb);
   break;
  case 128:
   musb_dbg(musb, "HNP: RESET (%s), to b_peripheral",
    usb_otg_state_string(musb->xceiv->otg->state));
   musb->xceiv->otg->state = 129;
   musb_g_reset(musb);
   break;
  case 130:
   musb->xceiv->otg->state = 129;

  case 129:
   musb_g_reset(musb);
   break;
  default:
   musb_dbg(musb, "Unhandled BUS RESET as %s",
    usb_otg_state_string(musb->xceiv->otg->state));
  }
 }
}
