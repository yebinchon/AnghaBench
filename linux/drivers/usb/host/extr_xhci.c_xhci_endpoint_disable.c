
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_ep {int ep_state; } ;
struct xhci_virt_device {struct xhci_virt_ep* eps; } ;
struct xhci_hcd {int lock; struct xhci_virt_device** devs; } ;
struct usb_host_endpoint {int * hcpriv; int desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {size_t slot_id; } ;


 int EP_CLEARING_TT ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xhci_dbg (struct xhci_hcd*,char*,int) ;
 unsigned int xhci_get_endpoint_index (int *) ;

__attribute__((used)) static void xhci_endpoint_disable(struct usb_hcd *hcd,
      struct usb_host_endpoint *host_ep)
{
 struct xhci_hcd *xhci;
 struct xhci_virt_device *vdev;
 struct xhci_virt_ep *ep;
 struct usb_device *udev;
 unsigned long flags;
 unsigned int ep_index;

 xhci = hcd_to_xhci(hcd);
rescan:
 spin_lock_irqsave(&xhci->lock, flags);

 udev = (struct usb_device *)host_ep->hcpriv;
 if (!udev || !udev->slot_id)
  goto done;

 vdev = xhci->devs[udev->slot_id];
 if (!vdev)
  goto done;

 ep_index = xhci_get_endpoint_index(&host_ep->desc);
 ep = &vdev->eps[ep_index];
 if (!ep)
  goto done;


 if (ep->ep_state & EP_CLEARING_TT) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  schedule_timeout_uninterruptible(1);
  goto rescan;
 }

 if (ep->ep_state)
  xhci_dbg(xhci, "endpoint disable with ep_state 0x%x\n",
    ep->ep_state);
done:
 host_ep->hcpriv = ((void*)0);
 spin_unlock_irqrestore(&xhci->lock, flags);
}
