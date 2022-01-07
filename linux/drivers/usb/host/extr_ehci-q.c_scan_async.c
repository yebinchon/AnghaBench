
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; int unlink_cycle; int qtd_list; TYPE_3__ qh_next; } ;
struct ehci_hcd {scalar_t__ rh_state; int enabled_hrtimer_events; int async_unlink_cycle; struct ehci_qh* qh_scan_next; TYPE_2__* async; } ;
struct TYPE_4__ {struct ehci_qh* qh; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 int BIT (int ) ;
 int EHCI_HRTIMER_ASYNC_UNLINKS ;
 scalar_t__ EHCI_RH_RUNNING ;
 scalar_t__ QH_STATE_LINKED ;
 int ehci_enable_event (struct ehci_hcd*,int ,int) ;
 scalar_t__ list_empty (int *) ;
 int qh_completions (struct ehci_hcd*,struct ehci_qh*) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void scan_async (struct ehci_hcd *ehci)
{
 struct ehci_qh *qh;
 bool check_unlinks_later = 0;

 ehci->qh_scan_next = ehci->async->qh_next.qh;
 while (ehci->qh_scan_next) {
  qh = ehci->qh_scan_next;
  ehci->qh_scan_next = qh->qh_next.qh;


  if (!list_empty(&qh->qtd_list)) {
   int temp;
   temp = qh_completions(ehci, qh);
   if (unlikely(temp)) {
    start_unlink_async(ehci, qh);
   } else if (list_empty(&qh->qtd_list)
     && qh->qh_state == QH_STATE_LINKED) {
    qh->unlink_cycle = ehci->async_unlink_cycle;
    check_unlinks_later = 1;
   }
  }
 }







 if (check_unlinks_later && ehci->rh_state == EHCI_RH_RUNNING &&
   !(ehci->enabled_hrtimer_events &
    BIT(EHCI_HRTIMER_ASYNC_UNLINKS))) {
  ehci_enable_event(ehci, EHCI_HRTIMER_ASYNC_UNLINKS, 1);
  ++ehci->async_unlink_cycle;
 }
}
