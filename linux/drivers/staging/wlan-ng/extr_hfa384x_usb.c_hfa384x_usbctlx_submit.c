
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hfa384x_usbctlx {int list; int state; } ;
struct TYPE_4__ {int lock; int pending; } ;
struct hfa384x {TYPE_2__ ctlxq; TYPE_1__* wlandev; } ;
struct TYPE_3__ {scalar_t__ hwremoved; } ;


 int CTLX_PENDING ;
 int ENODEV ;
 int hfa384x_usbctlxq_run (struct hfa384x*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hfa384x_usbctlx_submit(struct hfa384x *hw,
      struct hfa384x_usbctlx *ctlx)
{
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 if (hw->wlandev->hwremoved) {
  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
  return -ENODEV;
 }

 ctlx->state = CTLX_PENDING;
 list_add_tail(&ctlx->list, &hw->ctlxq.pending);
 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
 hfa384x_usbctlxq_run(hw);

 return 0;
}
