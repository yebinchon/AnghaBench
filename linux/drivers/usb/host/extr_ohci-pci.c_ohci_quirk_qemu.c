
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int flags; } ;


 int OHCI_QUIRK_QEMU ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;

__attribute__((used)) static int ohci_quirk_qemu(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);

 ohci->flags |= OHCI_QUIRK_QEMU;
 ohci_dbg(ohci, "enabled qemu quirk\n");
 return 0;
}
