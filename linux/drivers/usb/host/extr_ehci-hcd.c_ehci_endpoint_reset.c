
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {struct ehci_qh* hcpriv; int desc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int udev; } ;
struct ehci_qh {int unlink_reason; TYPE_1__ ps; int qtd_list; } ;
struct ehci_hcd {int lock; } ;


 int QH_UNLINK_REQUESTED ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_INT ;
 int WARN_ONCE (int,char*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int start_unlink_intr (struct ehci_hcd*,struct ehci_qh*) ;
 int usb_endpoint_dir_out (int *) ;
 int usb_endpoint_num (int *) ;
 int usb_endpoint_type (int *) ;
 int usb_settoggle (int ,int,int,int ) ;

__attribute__((used)) static void
ehci_endpoint_reset(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 struct ehci_qh *qh;
 int eptype = usb_endpoint_type(&ep->desc);
 int epnum = usb_endpoint_num(&ep->desc);
 int is_out = usb_endpoint_dir_out(&ep->desc);
 unsigned long flags;

 if (eptype != USB_ENDPOINT_XFER_BULK && eptype != USB_ENDPOINT_XFER_INT)
  return;

 spin_lock_irqsave(&ehci->lock, flags);
 qh = ep->hcpriv;






 if (qh) {
  if (!list_empty(&qh->qtd_list)) {
   WARN_ONCE(1, "clear_halt for a busy endpoint\n");
  } else {




   usb_settoggle(qh->ps.udev, epnum, is_out, 0);
   qh->unlink_reason |= QH_UNLINK_REQUESTED;
   if (eptype == USB_ENDPOINT_XFER_BULK)
    start_unlink_async(ehci, qh);
   else
    start_unlink_intr(ehci, qh);
  }
 }
 spin_unlock_irqrestore(&ehci->lock, flags);
}
