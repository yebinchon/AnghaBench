
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; int head; int sl_sz; int n; int lock; scalar_t__ base; } ;
struct qcom_slim_ctrl {TYPE_1__ rx; } ;


 int ENODATA ;
 int memcpy (void*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int slim_get_current_rxbuf(struct qcom_slim_ctrl *ctrl, void *buf)
{
 unsigned long flags;

 spin_lock_irqsave(&ctrl->rx.lock, flags);
 if (ctrl->rx.tail == ctrl->rx.head) {
  spin_unlock_irqrestore(&ctrl->rx.lock, flags);
  return -ENODATA;
 }
 memcpy(buf, ctrl->rx.base + (ctrl->rx.head * ctrl->rx.sl_sz),
    ctrl->rx.sl_sz);

 ctrl->rx.head = (ctrl->rx.head + 1) % ctrl->rx.n;
 spin_unlock_irqrestore(&ctrl->rx.lock, flags);

 return 0;
}
