
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; scalar_t__ unlink_reason; scalar_t__ xacterrs; TYPE_2__* hw; TYPE_1__ qh_next; int clearing_tt; int qh_dma; } ;
struct ehci_hcd {struct ehci_qh* async; } ;
typedef int __hc32 ;
struct TYPE_4__ {int hw_next; } ;


 int QH_NEXT (struct ehci_hcd*,int ) ;
 scalar_t__ QH_STATE_IDLE ;
 scalar_t__ QH_STATE_LINKED ;
 int WARN_ON (int) ;
 int enable_async (struct ehci_hcd*) ;
 int qh_refresh (struct ehci_hcd*,struct ehci_qh*) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static void qh_link_async (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 __hc32 dma = QH_NEXT(ehci, qh->qh_dma);
 struct ehci_qh *head;


 if (unlikely(qh->clearing_tt))
  return;

 WARN_ON(qh->qh_state != QH_STATE_IDLE);


 qh_refresh(ehci, qh);


 head = ehci->async;
 qh->qh_next = head->qh_next;
 qh->hw->hw_next = head->hw->hw_next;
 wmb ();

 head->qh_next.qh = qh;
 head->hw->hw_next = dma;

 qh->qh_state = QH_STATE_LINKED;
 qh->xacterrs = 0;
 qh->unlink_reason = 0;


 enable_async(ehci);
}
