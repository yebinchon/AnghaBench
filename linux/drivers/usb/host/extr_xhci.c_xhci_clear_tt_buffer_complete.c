
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {int lock; TYPE_2__** devs; } ;
struct usb_host_endpoint {int desc; scalar_t__ hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {unsigned int slot_id; } ;
struct TYPE_4__ {TYPE_1__* eps; } ;
struct TYPE_3__ {int ep_state; } ;


 int EP_CLEARING_TT ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int xhci_get_endpoint_index (int *) ;
 int xhci_ring_doorbell_for_active_rings (struct xhci_hcd*,unsigned int,unsigned int) ;

__attribute__((used)) static void xhci_clear_tt_buffer_complete(struct usb_hcd *hcd,
  struct usb_host_endpoint *ep)
{
 struct xhci_hcd *xhci;
 struct usb_device *udev;
 unsigned int slot_id;
 unsigned int ep_index;
 unsigned long flags;

 xhci = hcd_to_xhci(hcd);

 spin_lock_irqsave(&xhci->lock, flags);
 udev = (struct usb_device *)ep->hcpriv;
 slot_id = udev->slot_id;
 ep_index = xhci_get_endpoint_index(&ep->desc);

 xhci->devs[slot_id]->eps[ep_index].ep_state &= ~EP_CLEARING_TT;
 xhci_ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
 spin_unlock_irqrestore(&xhci->lock, flags);
}
