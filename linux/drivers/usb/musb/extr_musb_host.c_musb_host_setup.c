
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int controller; scalar_t__ otg_port; } ;
struct usb_hcd {int power_budget; int skip_phy_initialization; TYPE_3__ self; } ;
struct musb {scalar_t__ port_mode; TYPE_1__* xceiv; struct usb_hcd* hcd; } ;
struct TYPE_5__ {TYPE_3__* host; int state; } ;
struct TYPE_4__ {TYPE_2__* otg; } ;


 scalar_t__ MUSB_HOST ;
 int MUSB_HST_MODE (struct musb*) ;
 int OTG_STATE_A_IDLE ;
 int device_wakeup_enable (int ) ;
 int otg_set_host (TYPE_2__*,TYPE_3__*) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;

int musb_host_setup(struct musb *musb, int power_budget)
{
 int ret;
 struct usb_hcd *hcd = musb->hcd;

 if (musb->port_mode == MUSB_HOST) {
  MUSB_HST_MODE(musb);
  musb->xceiv->otg->state = OTG_STATE_A_IDLE;
 }
 otg_set_host(musb->xceiv->otg, &hcd->self);

 hcd->self.otg_port = 0;
 musb->xceiv->otg->host = &hcd->self;
 hcd->power_budget = 2 * (power_budget ? : 250);
 hcd->skip_phy_initialization = 1;

 ret = usb_add_hcd(hcd, 0, 0);
 if (ret < 0)
  return ret;

 device_wakeup_enable(hcd->self.controller);
 return 0;
}
