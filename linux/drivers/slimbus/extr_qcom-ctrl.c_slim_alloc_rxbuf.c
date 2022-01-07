
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; int n; int head; void* base; int sl_sz; int lock; } ;
struct qcom_slim_ctrl {TYPE_1__ rx; int dev; } ;


 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void *slim_alloc_rxbuf(struct qcom_slim_ctrl *ctrl)
{
 unsigned long flags;
 int idx;

 spin_lock_irqsave(&ctrl->rx.lock, flags);
 if ((ctrl->rx.tail + 1) % ctrl->rx.n == ctrl->rx.head) {
  spin_unlock_irqrestore(&ctrl->rx.lock, flags);
  dev_err(ctrl->dev, "RX QUEUE full!");
  return ((void*)0);
 }
 idx = ctrl->rx.tail;
 ctrl->rx.tail = (ctrl->rx.tail + 1) % ctrl->rx.n;
 spin_unlock_irqrestore(&ctrl->rx.lock, flags);

 return ctrl->rx.base + (idx * ctrl->rx.sl_sz);
}
