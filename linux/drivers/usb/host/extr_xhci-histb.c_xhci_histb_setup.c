
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_histb {int dummy; } ;
struct usb_hcd {int dummy; } ;


 struct xhci_hcd_histb* hcd_to_histb (struct usb_hcd*) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int xhci_gen_setup (struct usb_hcd*,int ) ;
 int xhci_histb_config (struct xhci_hcd_histb*) ;
 int xhci_histb_quirks ;

__attribute__((used)) static int xhci_histb_setup(struct usb_hcd *hcd)
{
 struct xhci_hcd_histb *histb = hcd_to_histb(hcd);
 int ret;

 if (usb_hcd_is_primary_hcd(hcd)) {
  ret = xhci_histb_config(histb);
  if (ret)
   return ret;
 }

 return xhci_gen_setup(hcd, xhci_histb_quirks);
}
