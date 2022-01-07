
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; int state; } ;
struct urb {scalar_t__ hcpriv; int pipe; } ;
struct oxu_hcd {int lock; } ;
struct ehci_qh {int qtd_list; int qh_state; } ;


 int HC_IS_RUNNING (int ) ;





 int dev_err (int ,char*,struct ehci_qh*,int) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int intr_deschedule (struct oxu_hcd*,struct ehci_qh*) ;
 int list_empty (int *) ;
 int oxu_dbg (struct oxu_hcd*,char*,struct ehci_qh*,int ) ;
 int qh_completions (struct oxu_hcd*,struct ehci_qh*) ;
 int qh_schedule (struct oxu_hcd*,struct ehci_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlink_async (struct oxu_hcd*,struct ehci_qh*) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static int oxu_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 struct ehci_qh *qh;
 unsigned long flags;

 spin_lock_irqsave(&oxu->lock, flags);
 switch (usb_pipetype(urb->pipe)) {
 case 131:
 case 132:
 default:
  qh = (struct ehci_qh *) urb->hcpriv;
  if (!qh)
   break;
  unlink_async(oxu, qh);
  break;

 case 130:
  qh = (struct ehci_qh *) urb->hcpriv;
  if (!qh)
   break;
  switch (qh->qh_state) {
  case 128:
   intr_deschedule(oxu, qh);

  case 129:
   qh_completions(oxu, qh);
   break;
  default:
   oxu_dbg(oxu, "bogus qh %p state %d\n",
     qh, qh->qh_state);
   goto done;
  }


  if (!list_empty(&qh->qtd_list)
    && HC_IS_RUNNING(hcd->state)) {
   int status;

   status = qh_schedule(oxu, qh);
   spin_unlock_irqrestore(&oxu->lock, flags);

   if (status != 0) {



    dev_err(hcd->self.controller,
     "can't reschedule qh %p, err %d\n", qh,
     status);
   }
   return status;
  }
  break;
 }
done:
 spin_unlock_irqrestore(&oxu->lock, flags);
 return 0;
}
