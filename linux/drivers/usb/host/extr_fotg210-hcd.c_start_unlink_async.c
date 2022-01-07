
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_qh {scalar_t__ qh_state; int needs_rescan; } ;
struct fotg210_hcd {int dummy; } ;


 scalar_t__ QH_STATE_COMPLETING ;
 scalar_t__ QH_STATE_LINKED ;
 int single_unlink_async (struct fotg210_hcd*,struct fotg210_qh*) ;
 int start_iaa_cycle (struct fotg210_hcd*,int) ;

__attribute__((used)) static void start_unlink_async(struct fotg210_hcd *fotg210,
  struct fotg210_qh *qh)
{





 if (qh->qh_state != QH_STATE_LINKED) {
  if (qh->qh_state == QH_STATE_COMPLETING)
   qh->needs_rescan = 1;
  return;
 }

 single_unlink_async(fotg210, qh);
 start_iaa_cycle(fotg210, 0);
}
