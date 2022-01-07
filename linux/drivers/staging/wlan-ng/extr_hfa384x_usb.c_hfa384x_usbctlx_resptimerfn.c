
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct hfa384x_usbctlx {int dummy; } ;
struct TYPE_2__ {int lock; int active; } ;
struct hfa384x {int resp_timer_done; TYPE_1__ ctlxq; } ;


 struct hfa384x* from_timer (int ,struct timer_list*,int ) ;
 struct hfa384x_usbctlx* get_active_ctlx (struct hfa384x*) ;
 int hfa384x_usbctlxq_run (struct hfa384x*) ;
 struct hfa384x* hw ;
 int list_empty (int *) ;
 int resptimer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlocked_usbctlx_cancel_async (struct hfa384x*,struct hfa384x_usbctlx*) ;

__attribute__((used)) static void hfa384x_usbctlx_resptimerfn(struct timer_list *t)
{
 struct hfa384x *hw = from_timer(hw, t, resptimer);
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 hw->resp_timer_done = 1;




 if (!list_empty(&hw->ctlxq.active)) {
  struct hfa384x_usbctlx *ctlx = get_active_ctlx(hw);

  if (unlocked_usbctlx_cancel_async(hw, ctlx) == 0) {
   spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
   hfa384x_usbctlxq_run(hw);
   return;
  }
 }
 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
