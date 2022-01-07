
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ehci_qh* qh; } ;
struct ehci_qh {TYPE_2__ qh_next; TYPE_1__* hw; int unlink_node; int qh_state; } ;
struct ehci_hcd {struct ehci_qh* qh_scan_next; struct ehci_qh* async; int async_unlink; } ;
struct TYPE_3__ {int hw_next; } ;


 int QH_STATE_UNLINK_WAIT ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void single_unlink_async(struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 struct ehci_qh *prev;


 qh->qh_state = QH_STATE_UNLINK_WAIT;
 list_add_tail(&qh->unlink_node, &ehci->async_unlink);


 prev = ehci->async;
 while (prev->qh_next.qh != qh)
  prev = prev->qh_next.qh;

 prev->hw->hw_next = qh->hw->hw_next;
 prev->qh_next = qh->qh_next;
 if (ehci->qh_scan_next == qh)
  ehci->qh_scan_next = qh->qh_next.qh;
}
