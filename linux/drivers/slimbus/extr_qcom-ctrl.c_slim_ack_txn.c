
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int n; int lock; } ;
struct qcom_slim_ctrl {struct completion** wr_comp; TYPE_1__ tx; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void slim_ack_txn(struct qcom_slim_ctrl *ctrl, int err)
{
 struct completion *comp;
 unsigned long flags;
 int idx;

 spin_lock_irqsave(&ctrl->tx.lock, flags);
 idx = ctrl->tx.head;
 ctrl->tx.head = (ctrl->tx.head + 1) % ctrl->tx.n;
 spin_unlock_irqrestore(&ctrl->tx.lock, flags);

 comp = ctrl->wr_comp[idx];
 ctrl->wr_comp[idx] = ((void*)0);

 complete(comp);
}
