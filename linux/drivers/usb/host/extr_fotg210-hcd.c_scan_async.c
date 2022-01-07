
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct fotg210_qh* qh; } ;
struct fotg210_qh {scalar_t__ qh_state; int unlink_cycle; int qtd_list; scalar_t__ needs_rescan; TYPE_3__ qh_next; } ;
struct fotg210_hcd {scalar_t__ rh_state; int enabled_hrtimer_events; int async_unlink_cycle; struct fotg210_qh* qh_scan_next; TYPE_2__* async; } ;
struct TYPE_4__ {struct fotg210_qh* qh; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 int BIT (int ) ;
 int FOTG210_HRTIMER_ASYNC_UNLINKS ;
 scalar_t__ FOTG210_RH_RUNNING ;
 scalar_t__ QH_STATE_LINKED ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;
 scalar_t__ list_empty (int *) ;
 int qh_completions (struct fotg210_hcd*,struct fotg210_qh*) ;
 int start_unlink_async (struct fotg210_hcd*,struct fotg210_qh*) ;

__attribute__((used)) static void scan_async(struct fotg210_hcd *fotg210)
{
 struct fotg210_qh *qh;
 bool check_unlinks_later = 0;

 fotg210->qh_scan_next = fotg210->async->qh_next.qh;
 while (fotg210->qh_scan_next) {
  qh = fotg210->qh_scan_next;
  fotg210->qh_scan_next = qh->qh_next.qh;
rescan:

  if (!list_empty(&qh->qtd_list)) {
   int temp;
   temp = qh_completions(fotg210, qh);
   if (qh->needs_rescan) {
    start_unlink_async(fotg210, qh);
   } else if (list_empty(&qh->qtd_list)
     && qh->qh_state == QH_STATE_LINKED) {
    qh->unlink_cycle = fotg210->async_unlink_cycle;
    check_unlinks_later = 1;
   } else if (temp != 0)
    goto rescan;
  }
 }







 if (check_unlinks_later && fotg210->rh_state == FOTG210_RH_RUNNING &&
   !(fotg210->enabled_hrtimer_events &
   BIT(FOTG210_HRTIMER_ASYNC_UNLINKS))) {
  fotg210_enable_event(fotg210,
    FOTG210_HRTIMER_ASYNC_UNLINKS, 1);
  ++fotg210->async_unlink_cycle;
 }
}
