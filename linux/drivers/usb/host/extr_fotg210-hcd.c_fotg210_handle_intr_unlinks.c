
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_qh {scalar_t__ unlink_cycle; struct fotg210_qh* unlink_next; } ;
struct fotg210_hcd {scalar_t__ rh_state; int intr_unlinking; scalar_t__ intr_unlink_cycle; struct fotg210_qh* intr_unlink; } ;


 int FOTG210_HRTIMER_UNLINK_INTR ;
 scalar_t__ FOTG210_RH_RUNNING ;
 int end_unlink_intr (struct fotg210_hcd*,struct fotg210_qh*) ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;

__attribute__((used)) static void fotg210_handle_intr_unlinks(struct fotg210_hcd *fotg210)
{
 bool stopped = (fotg210->rh_state < FOTG210_RH_RUNNING);
 fotg210->intr_unlinking = 1;
 while (fotg210->intr_unlink) {
  struct fotg210_qh *qh = fotg210->intr_unlink;

  if (!stopped && qh->unlink_cycle == fotg210->intr_unlink_cycle)
   break;
  fotg210->intr_unlink = qh->unlink_next;
  qh->unlink_next = ((void*)0);
  end_unlink_intr(fotg210, qh);
 }


 if (fotg210->intr_unlink) {
  fotg210_enable_event(fotg210, FOTG210_HRTIMER_UNLINK_INTR,
    1);
  ++fotg210->intr_unlink_cycle;
 }
 fotg210->intr_unlinking = 0;
}
