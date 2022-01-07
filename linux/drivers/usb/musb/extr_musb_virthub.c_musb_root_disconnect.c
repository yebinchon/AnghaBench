
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_otg {int state; TYPE_1__* host; } ;
struct TYPE_5__ {int is_a_peripheral; } ;
struct musb {int port1_status; TYPE_3__* xceiv; scalar_t__ is_active; TYPE_2__ g; int hcd; } ;
struct TYPE_6__ {struct usb_otg* otg; } ;
struct TYPE_4__ {int b_hnp_enable; } ;



 int OTG_STATE_A_PERIPHERAL ;

 int OTG_STATE_A_WAIT_BCON ;

 int OTG_STATE_B_IDLE ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_POWER ;
 int musb_dbg (struct musb*,char*,int ) ;
 int usb_hcd_poll_rh_status (int ) ;
 int usb_otg_state_string (int) ;

void musb_root_disconnect(struct musb *musb)
{
 struct usb_otg *otg = musb->xceiv->otg;

 musb->port1_status = USB_PORT_STAT_POWER
   | (USB_PORT_STAT_C_CONNECTION << 16);

 usb_hcd_poll_rh_status(musb->hcd);
 musb->is_active = 0;

 switch (musb->xceiv->otg->state) {
 case 129:
  if (otg->host->b_hnp_enable) {
   musb->xceiv->otg->state = OTG_STATE_A_PERIPHERAL;
   musb->g.is_a_peripheral = 1;
   break;
  }

 case 130:
  musb->xceiv->otg->state = OTG_STATE_A_WAIT_BCON;
  musb->is_active = 0;
  break;
 case 128:
  musb->xceiv->otg->state = OTG_STATE_B_IDLE;
  break;
 default:
  musb_dbg(musb, "host disconnect (%s)",
   usb_otg_state_string(musb->xceiv->otg->state));
 }
}
