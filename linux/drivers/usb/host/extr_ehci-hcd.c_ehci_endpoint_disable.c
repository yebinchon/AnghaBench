
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bEndpointAddress; } ;
struct usb_host_endpoint {struct ehci_qh* hcpriv; TYPE_2__ desc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_3__ {int bw_uperiod; } ;
struct ehci_qh {int qh_state; int qtd_list; TYPE_1__ ps; int clearing_tt; int unlink_reason; int td_list; int * hw; } ;
struct ehci_iso_stream {int qh_state; int qtd_list; TYPE_1__ ps; int clearing_tt; int unlink_reason; int td_list; int * hw; } ;
struct ehci_hcd {int lock; } ;







 int QH_UNLINK_QUEUE_EMPTY ;
 int QH_UNLINK_REQUESTED ;
 int USB_ENDPOINT_XFER_INT ;
 int WARN_ON (int) ;
 int ehci_err (struct ehci_hcd*,char*,struct ehci_qh*,int ,int,char*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int kfree (struct ehci_qh*) ;
 int list_empty (int *) ;
 int qh_destroy (struct ehci_hcd*,struct ehci_qh*) ;
 int reserve_release_intr_bandwidth (struct ehci_hcd*,struct ehci_qh*,int) ;
 int reserve_release_iso_bandwidth (struct ehci_hcd*,struct ehci_qh*,int) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int start_unlink_intr (struct ehci_hcd*,struct ehci_qh*) ;
 int usb_endpoint_type (TYPE_2__*) ;

__attribute__((used)) static void
ehci_endpoint_disable (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 unsigned long flags;
 struct ehci_qh *qh;




rescan:
 spin_lock_irqsave (&ehci->lock, flags);
 qh = ep->hcpriv;
 if (!qh)
  goto done;




 if (qh->hw == ((void*)0)) {
  struct ehci_iso_stream *stream = ep->hcpriv;

  if (!list_empty(&stream->td_list))
   goto idle_timeout;


  reserve_release_iso_bandwidth(ehci, stream, -1);
  kfree(stream);
  goto done;
 }

 qh->unlink_reason |= QH_UNLINK_REQUESTED;
 switch (qh->qh_state) {
 case 130:
  if (list_empty(&qh->qtd_list))
   qh->unlink_reason |= QH_UNLINK_QUEUE_EMPTY;
  else
   WARN_ON(1);
  if (usb_endpoint_type(&ep->desc) != USB_ENDPOINT_XFER_INT)
   start_unlink_async(ehci, qh);
  else
   start_unlink_intr(ehci, qh);

 case 132:
 case 129:
 case 128:
idle_timeout:
  spin_unlock_irqrestore (&ehci->lock, flags);
  schedule_timeout_uninterruptible(1);
  goto rescan;
 case 131:
  if (qh->clearing_tt)
   goto idle_timeout;
  if (list_empty (&qh->qtd_list)) {
   if (qh->ps.bw_uperiod)
    reserve_release_intr_bandwidth(ehci, qh, -1);
   qh_destroy(ehci, qh);
   break;
  }

 default:



  ehci_err (ehci, "qh %p (#%02x) state %d%s\n",
   qh, ep->desc.bEndpointAddress, qh->qh_state,
   list_empty (&qh->qtd_list) ? "" : "(has tds)");
  break;
 }
 done:
 ep->hcpriv = ((void*)0);
 spin_unlock_irqrestore (&ehci->lock, flags);
}
