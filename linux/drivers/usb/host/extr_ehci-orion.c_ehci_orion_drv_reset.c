
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int of_node; } ;


 int USB_SBUSCFG ;
 int USB_SBUSCFG_DEF_VAL ;
 int ehci_setup (struct usb_hcd*) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int wrl (int ,int ) ;

__attribute__((used)) static int ehci_orion_drv_reset(struct usb_hcd *hcd)
{
 struct device *dev = hcd->self.controller;
 int ret;

 ret = ehci_setup(hcd);
 if (ret)
  return ret;
 if (of_device_is_compatible(dev->of_node, "marvell,armada-3700-ehci"))
  wrl(USB_SBUSCFG, USB_SBUSCFG_DEF_VAL);

 return ret;
}
