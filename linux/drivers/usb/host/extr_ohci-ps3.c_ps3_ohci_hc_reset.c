
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int flags; } ;


 int OHCI_QUIRK_BE_MMIO ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_hcd_init (struct ohci_hcd*) ;
 int ohci_init (struct ohci_hcd*) ;

__attribute__((used)) static int ps3_ohci_hc_reset(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);

 ohci->flags |= OHCI_QUIRK_BE_MMIO;
 ohci_hcd_init(ohci);
 return ohci_init(ohci);
}
