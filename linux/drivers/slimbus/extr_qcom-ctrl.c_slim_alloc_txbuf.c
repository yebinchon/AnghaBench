
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slim_msg_txn {int dummy; } ;
struct TYPE_2__ {int head; int n; int tail; void* base; int sl_sz; int lock; } ;
struct qcom_slim_ctrl {TYPE_1__ tx; struct completion** wr_comp; int dev; } ;
struct completion {int dummy; } ;


 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void *slim_alloc_txbuf(struct qcom_slim_ctrl *ctrl,
         struct slim_msg_txn *txn,
         struct completion *done)
{
 unsigned long flags;
 int idx;

 spin_lock_irqsave(&ctrl->tx.lock, flags);
 if (((ctrl->tx.head + 1) % ctrl->tx.n) == ctrl->tx.tail) {
  spin_unlock_irqrestore(&ctrl->tx.lock, flags);
  dev_err(ctrl->dev, "controller TX buf unavailable");
  return ((void*)0);
 }
 idx = ctrl->tx.tail;
 ctrl->wr_comp[idx] = done;
 ctrl->tx.tail = (ctrl->tx.tail + 1) % ctrl->tx.n;

 spin_unlock_irqrestore(&ctrl->tx.lock, flags);

 return ctrl->tx.base + (idx * ctrl->tx.sl_sz);
}
