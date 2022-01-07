
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct musb {int port1_status; int is_active; TYPE_2__* xceiv; int int_usb; int finish_resume_work; scalar_t__ rh_timer; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;


 int MUSB_DEVCTL_HM ;
 int MUSB_DEVCTL_VBUS ;
 int MUSB_DEVCTL_VBUS_SHIFT ;
 int MUSB_DEV_MODE (struct musb*) ;
 int MUSB_INTR_DISCONNECT ;
 int MUSB_INTR_SUSPEND ;
 int MUSB_PORT_STAT_RESUME ;
 void* OTG_STATE_A_HOST ;




 int USB_PORT_STAT_C_SUSPEND ;
 int USB_RESUME_TIMEOUT ;
 int WARNING (char*,char*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int musb_dbg (struct musb*,char*,int ) ;
 int musb_g_resume (struct musb*) ;
 int musb_host_resume_root_hub (struct musb*) ;
 int schedule_delayed_work (int *,scalar_t__) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static void musb_handle_intr_resume(struct musb *musb, u8 devctl)
{
 musb_dbg(musb, "RESUME (%s)",
   usb_otg_state_string(musb->xceiv->otg->state));

 if (devctl & MUSB_DEVCTL_HM) {
  switch (musb->xceiv->otg->state) {
  case 131:

   musb->port1_status |=
     (USB_PORT_STAT_C_SUSPEND << 16)
     | MUSB_PORT_STAT_RESUME;
   musb->rh_timer = jiffies
    + msecs_to_jiffies(USB_RESUME_TIMEOUT);
   musb->xceiv->otg->state = OTG_STATE_A_HOST;
   musb->is_active = 1;
   musb_host_resume_root_hub(musb);
   schedule_delayed_work(&musb->finish_resume_work,
    msecs_to_jiffies(USB_RESUME_TIMEOUT));
   break;
  case 128:
   musb->xceiv->otg->state = 129;
   musb->is_active = 1;
   MUSB_DEV_MODE(musb);
   break;
  default:
   WARNING("bogus %s RESUME (%s)\n",
    "host",
    usb_otg_state_string(musb->xceiv->otg->state));
  }
 } else {
  switch (musb->xceiv->otg->state) {
  case 131:

   musb->xceiv->otg->state = OTG_STATE_A_HOST;
   musb_host_resume_root_hub(musb);
   break;
  case 128:
  case 129:



   if ((devctl & MUSB_DEVCTL_VBUS)
     != (3 << MUSB_DEVCTL_VBUS_SHIFT)
     ) {
    musb->int_usb |= MUSB_INTR_DISCONNECT;
    musb->int_usb &= ~MUSB_INTR_SUSPEND;
    break;
   }
   musb_g_resume(musb);
   break;
  case 130:
   musb->int_usb &= ~MUSB_INTR_SUSPEND;
   break;
  default:
   WARNING("bogus %s RESUME (%s)\n",
    "peripheral",
    usb_otg_state_string(musb->xceiv->otg->state));
  }
 }
}
