
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int regs; } ;
struct ehci_hcd {int big_endian_mmio; int caps; } ;


 int ehci_setup (struct usb_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int ps3_ehci_setup_insnreg (struct ehci_hcd*) ;

__attribute__((used)) static int ps3_ehci_hc_reset(struct usb_hcd *hcd)
{
 int result;
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);

 ehci->big_endian_mmio = 1;
 ehci->caps = hcd->regs;

 result = ehci_setup(hcd);
 if (result)
  return result;

 ps3_ehci_setup_insnreg(ehci);

 return result;
}
