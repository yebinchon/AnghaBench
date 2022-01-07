
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int regs; } ;
struct ehci_hcd {int caps; } ;


 int ehci_setup (struct usb_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;

__attribute__((used)) static int ehci_sh_reset(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);

 ehci->caps = hcd->regs;

 return ehci_setup(hcd);
}
