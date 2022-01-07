
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct fotg210_qh* qh; } ;
struct fotg210_qh {TYPE_2__ qh_next; TYPE_1__* hw; struct fotg210_qh* unlink_next; int qh_state; } ;
struct fotg210_hcd {struct fotg210_qh* qh_scan_next; struct fotg210_qh* async; struct fotg210_qh* async_unlink_last; struct fotg210_qh* async_unlink; } ;
struct TYPE_3__ {int hw_next; } ;


 int QH_STATE_UNLINK ;

__attribute__((used)) static void single_unlink_async(struct fotg210_hcd *fotg210,
  struct fotg210_qh *qh)
{
 struct fotg210_qh *prev;


 qh->qh_state = QH_STATE_UNLINK;
 if (fotg210->async_unlink)
  fotg210->async_unlink_last->unlink_next = qh;
 else
  fotg210->async_unlink = qh;
 fotg210->async_unlink_last = qh;


 prev = fotg210->async;
 while (prev->qh_next.qh != qh)
  prev = prev->qh_next.qh;

 prev->hw->hw_next = qh->hw->hw_next;
 prev->qh_next = qh->qh_next;
 if (fotg210->qh_scan_next == qh)
  fotg210->qh_scan_next = qh->qh_next.qh;
}
