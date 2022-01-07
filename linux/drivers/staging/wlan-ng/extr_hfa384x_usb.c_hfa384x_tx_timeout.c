
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlandevice {struct hfa384x* priv; } ;
struct TYPE_3__ {int lock; } ;
struct hfa384x {TYPE_1__ ctlxq; int usb_work; int usb_flags; TYPE_2__* wlandev; } ;
struct TYPE_4__ {int hwremoved; } ;


 int WORK_RX_HALT ;
 int WORK_TX_HALT ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

void hfa384x_tx_timeout(struct wlandevice *wlandev)
{
 struct hfa384x *hw = wlandev->priv;
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 if (!hw->wlandev->hwremoved) {
  int sched;

  sched = !test_and_set_bit(WORK_TX_HALT, &hw->usb_flags);
  sched |= !test_and_set_bit(WORK_RX_HALT, &hw->usb_flags);
  if (sched)
   schedule_work(&hw->usb_work);
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
