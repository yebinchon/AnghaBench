
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct fotg210_qh* hcpriv; int desc; } ;
struct usb_hcd {int dummy; } ;
struct fotg210_qh {scalar_t__ qh_state; int qtd_list; int dev; } ;
struct fotg210_hcd {int lock; } ;


 scalar_t__ QH_STATE_COMPLETING ;
 scalar_t__ QH_STATE_LINKED ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_INT ;
 int WARN_ONCE (int,char*) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct fotg210_hcd*,struct fotg210_qh*) ;
 int start_unlink_intr (struct fotg210_hcd*,struct fotg210_qh*) ;
 int usb_endpoint_dir_out (int *) ;
 int usb_endpoint_num (int *) ;
 int usb_endpoint_type (int *) ;
 int usb_settoggle (int ,int,int,int ) ;

__attribute__((used)) static void fotg210_endpoint_reset(struct usb_hcd *hcd,
  struct usb_host_endpoint *ep)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 struct fotg210_qh *qh;
 int eptype = usb_endpoint_type(&ep->desc);
 int epnum = usb_endpoint_num(&ep->desc);
 int is_out = usb_endpoint_dir_out(&ep->desc);
 unsigned long flags;

 if (eptype != USB_ENDPOINT_XFER_BULK && eptype != USB_ENDPOINT_XFER_INT)
  return;

 spin_lock_irqsave(&fotg210->lock, flags);
 qh = ep->hcpriv;






 if (qh) {
  usb_settoggle(qh->dev, epnum, is_out, 0);
  if (!list_empty(&qh->qtd_list)) {
   WARN_ONCE(1, "clear_halt for a busy endpoint\n");
  } else if (qh->qh_state == QH_STATE_LINKED ||
    qh->qh_state == QH_STATE_COMPLETING) {





   if (eptype == USB_ENDPOINT_XFER_BULK)
    start_unlink_async(fotg210, qh);
   else
    start_unlink_intr(fotg210, qh);
  }
 }
 spin_unlock_irqrestore(&fotg210->lock, flags);
}
