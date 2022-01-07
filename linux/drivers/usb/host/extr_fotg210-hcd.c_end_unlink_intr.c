
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_qh_hw {int hw_next; } ;
struct fotg210_qh {int qtd_list; int qh_state; struct fotg210_qh_hw* hw; } ;
struct fotg210_hcd {scalar_t__ rh_state; int intr_count; } ;


 int FOTG210_LIST_END (struct fotg210_hcd*) ;
 scalar_t__ FOTG210_RH_RUNNING ;
 int QH_STATE_IDLE ;
 int disable_periodic (struct fotg210_hcd*) ;
 int fotg210_err (struct fotg210_hcd*,char*,struct fotg210_qh*,int) ;
 int list_empty (int *) ;
 int qh_completions (struct fotg210_hcd*,struct fotg210_qh*) ;
 int qh_schedule (struct fotg210_hcd*,struct fotg210_qh*) ;

__attribute__((used)) static void end_unlink_intr(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
 struct fotg210_qh_hw *hw = qh->hw;
 int rc;

 qh->qh_state = QH_STATE_IDLE;
 hw->hw_next = FOTG210_LIST_END(fotg210);

 qh_completions(fotg210, qh);


 if (!list_empty(&qh->qtd_list) &&
   fotg210->rh_state == FOTG210_RH_RUNNING) {
  rc = qh_schedule(fotg210, qh);







  if (rc != 0)
   fotg210_err(fotg210, "can't reschedule qh %p, err %d\n",
     qh, rc);
 }


 --fotg210->intr_count;
 disable_periodic(fotg210);
}
