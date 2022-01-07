
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct usb_hub_descriptor {int dummy; } ;
struct usb_hcd {scalar_t__ speed; } ;


 scalar_t__ HCD_USB3 ;
 int xhci_usb2_hub_descriptor (struct usb_hcd*,struct xhci_hcd*,struct usb_hub_descriptor*) ;
 int xhci_usb3_hub_descriptor (struct usb_hcd*,struct xhci_hcd*,struct usb_hub_descriptor*) ;

__attribute__((used)) static void xhci_hub_descriptor(struct usb_hcd *hcd, struct xhci_hcd *xhci,
  struct usb_hub_descriptor *desc)
{

 if (hcd->speed >= HCD_USB3)
  xhci_usb3_hub_descriptor(hcd, xhci, desc);
 else
  xhci_usb2_hub_descriptor(hcd, xhci, desc);

}
