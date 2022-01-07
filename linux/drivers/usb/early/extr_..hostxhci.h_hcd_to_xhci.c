
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct usb_hcd {scalar_t__ hcd_priv; struct usb_hcd* primary_hcd; } ;


 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;

__attribute__((used)) static inline struct xhci_hcd *hcd_to_xhci(struct usb_hcd *hcd)
{
 struct usb_hcd *primary_hcd;

 if (usb_hcd_is_primary_hcd(hcd))
  primary_hcd = hcd;
 else
  primary_hcd = hcd->primary_hcd;

 return (struct xhci_hcd *) (primary_hcd->hcd_priv);
}
