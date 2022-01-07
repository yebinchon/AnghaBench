
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct fotg210_qh* qh; } ;
struct fotg210_qh {scalar_t__ qh_state; scalar_t__ xacterrs; TYPE_2__* hw; TYPE_1__ qh_next; int clearing_tt; int qh_dma; } ;
struct fotg210_hcd {struct fotg210_qh* async; } ;
typedef int __hc32 ;
struct TYPE_4__ {int hw_next; } ;


 int QH_NEXT (struct fotg210_hcd*,int ) ;
 scalar_t__ QH_STATE_IDLE ;
 scalar_t__ QH_STATE_LINKED ;
 int WARN_ON (int) ;
 int enable_async (struct fotg210_hcd*) ;
 int qh_refresh (struct fotg210_hcd*,struct fotg210_qh*) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static void qh_link_async(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
 __hc32 dma = QH_NEXT(fotg210, qh->qh_dma);
 struct fotg210_qh *head;


 if (unlikely(qh->clearing_tt))
  return;

 WARN_ON(qh->qh_state != QH_STATE_IDLE);


 qh_refresh(fotg210, qh);


 head = fotg210->async;
 qh->qh_next = head->qh_next;
 qh->hw->hw_next = head->hw->hw_next;
 wmb();

 head->qh_next.qh = qh;
 head->hw->hw_next = dma;

 qh->xacterrs = 0;
 qh->qh_state = QH_STATE_LINKED;


 enable_async(fotg210);
}
