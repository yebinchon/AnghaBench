
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct hfa384x {TYPE_2__ ctlxq; int usb_work; int usb_flags; TYPE_1__* wlandev; } ;
struct TYPE_3__ {int hwremoved; } ;


 int THROTTLE_RX ;
 int THROTTLE_TX ;
 int WORK_RX_RESUME ;
 int WORK_TX_RESUME ;
 struct hfa384x* from_timer (int ,struct timer_list*,int ) ;
 struct hfa384x* hw ;
 int pr_debug (char*,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int throttle ;

__attribute__((used)) static void hfa384x_usb_throttlefn(struct timer_list *t)
{
 struct hfa384x *hw = from_timer(hw, t, throttle);
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);





 pr_debug("flags=0x%lx\n", hw->usb_flags);
 if (!hw->wlandev->hwremoved &&
     ((test_and_clear_bit(THROTTLE_RX, &hw->usb_flags) &&
       !test_and_set_bit(WORK_RX_RESUME, &hw->usb_flags)) |
      (test_and_clear_bit(THROTTLE_TX, &hw->usb_flags) &&
       !test_and_set_bit(WORK_TX_RESUME, &hw->usb_flags))
     )) {
  schedule_work(&hw->usb_work);
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
