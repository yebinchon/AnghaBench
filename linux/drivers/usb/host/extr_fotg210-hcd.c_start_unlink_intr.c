
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_qh {scalar_t__ qh_state; int needs_rescan; struct fotg210_qh* unlink_next; int unlink_cycle; } ;
struct fotg210_hcd {scalar_t__ rh_state; int intr_unlink_cycle; struct fotg210_qh* intr_unlink; scalar_t__ intr_unlinking; struct fotg210_qh* intr_unlink_last; } ;


 int FOTG210_HRTIMER_UNLINK_INTR ;
 scalar_t__ FOTG210_RH_RUNNING ;
 scalar_t__ QH_STATE_COMPLETING ;
 scalar_t__ QH_STATE_LINKED ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;
 int fotg210_handle_intr_unlinks (struct fotg210_hcd*) ;
 int qh_unlink_periodic (struct fotg210_hcd*,struct fotg210_qh*) ;
 int wmb () ;

__attribute__((used)) static void start_unlink_intr(struct fotg210_hcd *fotg210,
  struct fotg210_qh *qh)
{




 if (qh->qh_state != QH_STATE_LINKED) {
  if (qh->qh_state == QH_STATE_COMPLETING)
   qh->needs_rescan = 1;
  return;
 }

 qh_unlink_periodic(fotg210, qh);


 wmb();






 qh->unlink_cycle = fotg210->intr_unlink_cycle;


 if (fotg210->intr_unlink)
  fotg210->intr_unlink_last->unlink_next = qh;
 else
  fotg210->intr_unlink = qh;
 fotg210->intr_unlink_last = qh;

 if (fotg210->intr_unlinking)
  ;
 else if (fotg210->rh_state < FOTG210_RH_RUNNING)
  fotg210_handle_intr_unlinks(fotg210);
 else if (fotg210->intr_unlink == qh) {
  fotg210_enable_event(fotg210, FOTG210_HRTIMER_UNLINK_INTR,
    1);
  ++fotg210->intr_unlink_cycle;
 }
}
