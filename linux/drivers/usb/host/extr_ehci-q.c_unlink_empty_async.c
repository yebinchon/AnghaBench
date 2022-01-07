
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; scalar_t__ unlink_cycle; int unlink_reason; int qtd_list; TYPE_3__ qh_next; } ;
struct ehci_hcd {scalar_t__ async_unlink_cycle; int async_unlink; TYPE_2__* async; } ;
struct TYPE_4__ {struct ehci_qh* qh; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 int EHCI_HRTIMER_ASYNC_UNLINKS ;
 scalar_t__ QH_STATE_LINKED ;
 int QH_UNLINK_QUEUE_EMPTY ;
 int ehci_enable_event (struct ehci_hcd*,int ,int) ;
 scalar_t__ list_empty (int *) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;

__attribute__((used)) static void unlink_empty_async(struct ehci_hcd *ehci)
{
 struct ehci_qh *qh;
 struct ehci_qh *qh_to_unlink = ((void*)0);
 int count = 0;


 for (qh = ehci->async->qh_next.qh; qh; qh = qh->qh_next.qh) {
  if (list_empty(&qh->qtd_list) &&
    qh->qh_state == QH_STATE_LINKED) {
   ++count;
   if (qh->unlink_cycle != ehci->async_unlink_cycle)
    qh_to_unlink = qh;
  }
 }


 if (list_empty(&ehci->async_unlink) && qh_to_unlink) {
  qh_to_unlink->unlink_reason |= QH_UNLINK_QUEUE_EMPTY;
  start_unlink_async(ehci, qh_to_unlink);
  --count;
 }


 if (count > 0) {
  ehci_enable_event(ehci, EHCI_HRTIMER_ASYNC_UNLINKS, 1);
  ++ehci->async_unlink_cycle;
 }
}
