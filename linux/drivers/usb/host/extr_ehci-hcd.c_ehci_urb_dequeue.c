
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int pipe; scalar_t__ hcpriv; } ;
struct ehci_qh {int qh_state; int dequeue_during_giveback; int unlink_reason; } ;
struct ehci_hcd {int lock; } ;


 scalar_t__ PIPE_INTERRUPT ;
 scalar_t__ PIPE_ISOCHRONOUS ;





 int QH_UNLINK_REQUESTED ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int qh_completions (struct ehci_hcd*,struct ehci_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int start_unlink_intr (struct ehci_hcd*,struct ehci_qh*) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 scalar_t__ usb_pipetype (int ) ;

__attribute__((used)) static int ehci_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 struct ehci_qh *qh;
 unsigned long flags;
 int rc;

 spin_lock_irqsave (&ehci->lock, flags);
 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto done;

 if (usb_pipetype(urb->pipe) == PIPE_ISOCHRONOUS) {





 } else {
  qh = (struct ehci_qh *) urb->hcpriv;
  qh->unlink_reason |= QH_UNLINK_REQUESTED;
  switch (qh->qh_state) {
  case 130:
   if (usb_pipetype(urb->pipe) == PIPE_INTERRUPT)
    start_unlink_intr(ehci, qh);
   else
    start_unlink_async(ehci, qh);
   break;
  case 132:
   qh->dequeue_during_giveback = 1;
   break;
  case 129:
  case 128:

   break;
  case 131:

   qh_completions(ehci, qh);
   break;
  }
 }
done:
 spin_unlock_irqrestore (&ehci->lock, flags);
 return rc;
}
