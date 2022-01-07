
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb_priv {int node; struct uhci_qh* qh; } ;
struct urb {int error_count; TYPE_1__* ep; int dev; } ;
struct TYPE_4__ {int * next; } ;
struct uhci_qh {int type; scalar_t__ state; int is_stopped; TYPE_2__ queue; } ;
struct uhci_hcd {int lock; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct uhci_qh* hcpriv; } ;


 int ENOMEM ;
 scalar_t__ QH_STATE_IDLE ;




 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 int list_add_tail (int *,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uhci_activate_qh (struct uhci_hcd*,struct uhci_qh*) ;
 struct uhci_qh* uhci_alloc_qh (struct uhci_hcd*,int ,TYPE_1__*) ;
 struct urb_priv* uhci_alloc_urb_priv (struct uhci_hcd*,struct urb*) ;
 int uhci_free_urb_priv (struct uhci_hcd*,struct urb_priv*) ;
 int uhci_make_qh_idle (struct uhci_hcd*,struct uhci_qh*) ;
 int uhci_submit_bulk (struct uhci_hcd*,struct urb*,struct uhci_qh*) ;
 int uhci_submit_control (struct uhci_hcd*,struct urb*,struct uhci_qh*) ;
 int uhci_submit_interrupt (struct uhci_hcd*,struct urb*,struct uhci_qh*) ;
 int uhci_submit_isochronous (struct uhci_hcd*,struct urb*,struct uhci_qh*) ;
 int uhci_urbp_wants_fsbr (struct uhci_hcd*,struct urb_priv*) ;
 int usb_hcd_link_urb_to_ep (struct usb_hcd*,struct urb*) ;
 int usb_hcd_unlink_urb_from_ep (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static int uhci_urb_enqueue(struct usb_hcd *hcd,
  struct urb *urb, gfp_t mem_flags)
{
 int ret;
 struct uhci_hcd *uhci = hcd_to_uhci(hcd);
 unsigned long flags;
 struct urb_priv *urbp;
 struct uhci_qh *qh;

 spin_lock_irqsave(&uhci->lock, flags);

 ret = usb_hcd_link_urb_to_ep(hcd, urb);
 if (ret)
  goto done_not_linked;

 ret = -ENOMEM;
 urbp = uhci_alloc_urb_priv(uhci, urb);
 if (!urbp)
  goto done;

 if (urb->ep->hcpriv)
  qh = urb->ep->hcpriv;
 else {
  qh = uhci_alloc_qh(uhci, urb->dev, urb->ep);
  if (!qh)
   goto err_no_qh;
 }
 urbp->qh = qh;

 switch (qh->type) {
 case 130:
  ret = uhci_submit_control(uhci, urb, qh);
  break;
 case 131:
  ret = uhci_submit_bulk(uhci, urb, qh);
  break;
 case 129:
  ret = uhci_submit_interrupt(uhci, urb, qh);
  break;
 case 128:
  urb->error_count = 0;
  ret = uhci_submit_isochronous(uhci, urb, qh);
  break;
 }
 if (ret != 0)
  goto err_submit_failed;


 list_add_tail(&urbp->node, &qh->queue);





 if (qh->queue.next == &urbp->node && !qh->is_stopped) {
  uhci_activate_qh(uhci, qh);
  uhci_urbp_wants_fsbr(uhci, urbp);
 }
 goto done;

err_submit_failed:
 if (qh->state == QH_STATE_IDLE)
  uhci_make_qh_idle(uhci, qh);
err_no_qh:
 uhci_free_urb_priv(uhci, urbp);
done:
 if (ret)
  usb_hcd_unlink_urb_from_ep(hcd, urb);
done_not_linked:
 spin_unlock_irqrestore(&uhci->lock, flags);
 return ret;
}
