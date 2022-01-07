
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {scalar_t__ hcpriv; int pipe; } ;
struct fotg210_qh {int qh_state; } ;
struct fotg210_hcd {int lock; } ;
 int fotg210_dbg (struct fotg210_hcd*,char*,struct fotg210_qh*,int ) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int qh_completions (struct fotg210_hcd*,struct fotg210_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct fotg210_hcd*,struct fotg210_qh*) ;
 int start_unlink_intr (struct fotg210_hcd*,struct fotg210_qh*) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int fotg210_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 struct fotg210_qh *qh;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&fotg210->lock, flags);
 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto done;

 switch (usb_pipetype(urb->pipe)) {


 default:
  qh = (struct fotg210_qh *) urb->hcpriv;
  if (!qh)
   break;
  switch (qh->qh_state) {
  case 130:
  case 132:
   start_unlink_async(fotg210, qh);
   break;
  case 129:
  case 128:

   break;
  case 131:

   qh_completions(fotg210, qh);
   break;
  }
  break;

 case 134:
  qh = (struct fotg210_qh *) urb->hcpriv;
  if (!qh)
   break;
  switch (qh->qh_state) {
  case 130:
  case 132:
   start_unlink_intr(fotg210, qh);
   break;
  case 131:
   qh_completions(fotg210, qh);
   break;
  default:
   fotg210_dbg(fotg210, "bogus qh %p state %d\n",
     qh, qh->qh_state);
   goto done;
  }
  break;

 case 133:




  break;
 }
done:
 spin_unlock_irqrestore(&fotg210->lock, flags);
 return rc;
}
