
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct fotg210_qh* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct fotg210_qh {scalar_t__ qh_state; int qtd_list; scalar_t__ clearing_tt; } ;
struct fotg210_hcd {scalar_t__ rh_state; int lock; } ;


 scalar_t__ FOTG210_RH_RUNNING ;
 scalar_t__ QH_STATE_IDLE ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int list_empty (int *) ;
 int qh_link_async (struct fotg210_hcd*,struct fotg210_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fotg210_clear_tt_buffer_complete(struct usb_hcd *hcd,
  struct usb_host_endpoint *ep)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);
 struct fotg210_qh *qh = ep->hcpriv;
 unsigned long flags;

 spin_lock_irqsave(&fotg210->lock, flags);
 qh->clearing_tt = 0;
 if (qh->qh_state == QH_STATE_IDLE && !list_empty(&qh->qtd_list)
   && fotg210->rh_state == FOTG210_RH_RUNNING)
  qh_link_async(fotg210, qh);
 spin_unlock_irqrestore(&fotg210->lock, flags);
}
