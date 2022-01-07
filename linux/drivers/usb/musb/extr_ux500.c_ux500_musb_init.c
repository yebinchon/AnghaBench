
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct musb {int isr; int controller; TYPE_1__ nb; int xceiv; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int USB_PHY_TYPE_USB2 ;
 int dev_dbg (int ,char*) ;
 int musb_otg_notifications ;
 int pr_err (char*) ;
 int usb_get_phy (int ) ;
 int usb_register_notifier (int ,TYPE_1__*) ;
 int ux500_musb_interrupt ;

__attribute__((used)) static int ux500_musb_init(struct musb *musb)
{
 int status;

 musb->xceiv = usb_get_phy(USB_PHY_TYPE_USB2);
 if (IS_ERR_OR_NULL(musb->xceiv)) {
  pr_err("HS USB OTG: no transceiver configured\n");
  return -EPROBE_DEFER;
 }

 musb->nb.notifier_call = musb_otg_notifications;
 status = usb_register_notifier(musb->xceiv, &musb->nb);
 if (status < 0) {
  dev_dbg(musb->controller, "notification register failed\n");
  return status;
 }

 musb->isr = ux500_musb_interrupt;

 return 0;
}
