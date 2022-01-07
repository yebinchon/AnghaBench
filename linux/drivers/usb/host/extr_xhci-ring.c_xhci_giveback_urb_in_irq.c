
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_td {struct urb* urb; } ;
struct xhci_hcd {int quirks; int lock; } ;
struct usb_hcd {int dummy; } ;
struct urb_priv {int dummy; } ;
struct urb {int pipe; TYPE_1__* dev; struct urb_priv* hcpriv; } ;
struct TYPE_5__ {scalar_t__ bandwidth_isoc_reqs; } ;
struct TYPE_6__ {TYPE_2__ self; } ;
struct TYPE_4__ {int bus; } ;


 scalar_t__ PIPE_ISOCHRONOUS ;
 int XHCI_AMD_PLL_FIX ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xhci_urb_giveback (struct urb*) ;
 int usb_amd_quirk_pll_enable () ;
 int usb_hcd_giveback_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;
 scalar_t__ usb_pipetype (int ) ;
 TYPE_3__* xhci_to_hcd (struct xhci_hcd*) ;
 int xhci_urb_free_priv (struct urb_priv*) ;

__attribute__((used)) static void xhci_giveback_urb_in_irq(struct xhci_hcd *xhci,
         struct xhci_td *cur_td, int status)
{
 struct urb *urb = cur_td->urb;
 struct urb_priv *urb_priv = urb->hcpriv;
 struct usb_hcd *hcd = bus_to_hcd(urb->dev->bus);

 if (usb_pipetype(urb->pipe) == PIPE_ISOCHRONOUS) {
  xhci_to_hcd(xhci)->self.bandwidth_isoc_reqs--;
  if (xhci_to_hcd(xhci)->self.bandwidth_isoc_reqs == 0) {
   if (xhci->quirks & XHCI_AMD_PLL_FIX)
    usb_amd_quirk_pll_enable();
  }
 }
 xhci_urb_free_priv(urb_priv);
 usb_hcd_unlink_urb_from_ep(hcd, urb);
 spin_unlock(&xhci->lock);
 trace_xhci_urb_giveback(urb);
 usb_hcd_giveback_urb(hcd, urb, status);
 spin_lock(&xhci->lock);
}
