
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {int has_tt; TYPE_1__ self; } ;
struct ehci_hcd_mv {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int dev_err (struct device*,char*,...) ;
 int ehci_setup (struct usb_hcd*) ;
 struct ehci_hcd_mv* hcd_to_ehci_hcd_mv (struct usb_hcd*) ;

__attribute__((used)) static int mv_ehci_reset(struct usb_hcd *hcd)
{
 struct device *dev = hcd->self.controller;
 struct ehci_hcd_mv *ehci_mv = hcd_to_ehci_hcd_mv(hcd);
 int retval;

 if (ehci_mv == ((void*)0)) {
  dev_err(dev, "Can not find private ehci data\n");
  return -ENODEV;
 }

 hcd->has_tt = 1;

 retval = ehci_setup(hcd);
 if (retval)
  dev_err(dev, "ehci_setup failed %d\n", retval);

 return retval;
}
