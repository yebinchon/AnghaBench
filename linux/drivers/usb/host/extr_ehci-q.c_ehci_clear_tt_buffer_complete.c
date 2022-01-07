
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct ehci_qh* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct ehci_qh {scalar_t__ qh_state; int qtd_list; scalar_t__ clearing_tt; } ;
struct ehci_hcd {scalar_t__ rh_state; int lock; } ;


 scalar_t__ EHCI_RH_RUNNING ;
 scalar_t__ QH_STATE_IDLE ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int list_empty (int *) ;
 int qh_link_async (struct ehci_hcd*,struct ehci_qh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ehci_clear_tt_buffer_complete(struct usb_hcd *hcd,
  struct usb_host_endpoint *ep)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 struct ehci_qh *qh = ep->hcpriv;
 unsigned long flags;

 spin_lock_irqsave(&ehci->lock, flags);
 qh->clearing_tt = 0;
 if (qh->qh_state == QH_STATE_IDLE && !list_empty(&qh->qtd_list)
   && ehci->rh_state == EHCI_RH_RUNNING)
  qh_link_async(ehci, qh);
 spin_unlock_irqrestore(&ehci->lock, flags);
}
