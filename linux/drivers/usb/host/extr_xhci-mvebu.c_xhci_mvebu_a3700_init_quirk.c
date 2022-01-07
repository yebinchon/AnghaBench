
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int quirks; } ;
struct usb_hcd {int dummy; } ;


 int XHCI_RESET_ON_RESUME ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;

int xhci_mvebu_a3700_init_quirk(struct usb_hcd *hcd)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);


 xhci->quirks |= XHCI_RESET_ON_RESUME;

 return 0;
}
