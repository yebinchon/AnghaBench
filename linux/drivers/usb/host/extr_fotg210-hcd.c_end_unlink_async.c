
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * qh; } ;
struct fotg210_qh {int qtd_list; TYPE_1__ qh_next; int qh_state; struct fotg210_qh* unlink_next; } ;
struct fotg210_hcd {int async_unlinking; scalar_t__ rh_state; scalar_t__ async_unlink; struct fotg210_qh* async_iaa; } ;


 scalar_t__ FOTG210_RH_RUNNING ;
 int QH_STATE_IDLE ;
 int disable_async (struct fotg210_hcd*) ;
 int list_empty (int *) ;
 int qh_completions (struct fotg210_hcd*,struct fotg210_qh*) ;
 int qh_link_async (struct fotg210_hcd*,struct fotg210_qh*) ;
 int start_iaa_cycle (struct fotg210_hcd*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void end_unlink_async(struct fotg210_hcd *fotg210)
{
 struct fotg210_qh *qh;


restart:
 fotg210->async_unlinking = 1;
 while (fotg210->async_iaa) {
  qh = fotg210->async_iaa;
  fotg210->async_iaa = qh->unlink_next;
  qh->unlink_next = ((void*)0);

  qh->qh_state = QH_STATE_IDLE;
  qh->qh_next.qh = ((void*)0);

  qh_completions(fotg210, qh);
  if (!list_empty(&qh->qtd_list) &&
    fotg210->rh_state == FOTG210_RH_RUNNING)
   qh_link_async(fotg210, qh);
  disable_async(fotg210);
 }
 fotg210->async_unlinking = 0;


 if (fotg210->async_unlink) {
  start_iaa_cycle(fotg210, 1);
  if (unlikely(fotg210->rh_state < FOTG210_RH_RUNNING))
   goto restart;
 }
}
