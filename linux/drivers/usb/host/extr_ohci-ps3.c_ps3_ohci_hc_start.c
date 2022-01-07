
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bus_name; int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {TYPE_3__* regs; } ;
struct TYPE_5__ {int b; int a; } ;
struct TYPE_6__ {TYPE_2__ roothub; } ;


 int RH_A_OCPM ;
 int RH_A_PSM ;
 int dev_err (int ,char*,int ) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_run (struct ohci_hcd*) ;
 int ohci_stop (struct usb_hcd*) ;
 int ohci_writel (struct ohci_hcd*,int,int *) ;

__attribute__((used)) static int ps3_ohci_hc_start(struct usb_hcd *hcd)
{
 int result;
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);




 ohci_writel(ohci, 0x7f000000 | RH_A_PSM | RH_A_OCPM,
  &ohci->regs->roothub.a);
 ohci_writel(ohci, 0x00060000, &ohci->regs->roothub.b);

 result = ohci_run(ohci);

 if (result < 0) {
  dev_err(hcd->self.controller, "can't start %s\n",
   hcd->self.bus_name);
  ohci_stop(hcd);
 }

 return result;
}
