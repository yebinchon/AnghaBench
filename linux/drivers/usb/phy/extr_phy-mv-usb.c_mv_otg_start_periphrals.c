
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_otg {int gadget; } ;
struct TYPE_2__ {int dev; struct usb_otg* otg; } ;
struct mv_otg {TYPE_1__ phy; } ;


 int dev_info (int ,char*,char*) ;
 int usb_gadget_vbus_connect (int ) ;
 int usb_gadget_vbus_disconnect (int ) ;

__attribute__((used)) static void mv_otg_start_periphrals(struct mv_otg *mvotg, int on)
{
 struct usb_otg *otg = mvotg->phy.otg;

 if (!otg->gadget)
  return;

 dev_info(mvotg->phy.dev, "gadget %s\n", on ? "on" : "off");

 if (on)
  usb_gadget_vbus_connect(otg->gadget);
 else
  usb_gadget_vbus_disconnect(otg->gadget);
}
