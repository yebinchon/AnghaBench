
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int has_tt; int regs; } ;
struct ehci_hcd {int big_endian_mmio; int big_endian_desc; int caps; } ;


 int ehci_setup (struct usb_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int usb_hcd_tdi_set_mode (struct ehci_hcd*) ;

__attribute__((used)) static int ehci_msp_setup(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 int retval;

 ehci->big_endian_mmio = 1;
 ehci->big_endian_desc = 1;

 ehci->caps = hcd->regs;
 hcd->has_tt = 1;

 retval = ehci_setup(hcd);
 if (retval)
  return retval;

 usb_hcd_tdi_set_mode(ehci);

 return retval;
}
