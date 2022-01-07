
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct hfa384x_usbctlx {int state; } ;
struct TYPE_3__ {int lock; int active; } ;
struct TYPE_4__ {int transfer_flags; } ;
struct hfa384x {int req_timer_done; int resp_timer_done; TYPE_1__ ctlxq; int resptimer; TYPE_2__ ctlx_urb; } ;


 int CTLX_REQ_FAILED ;
 int EINPROGRESS ;
 int URB_ASYNC_UNLINK ;
 scalar_t__ del_timer (int *) ;
 struct hfa384x* from_timer (int ,struct timer_list*,int ) ;
 struct hfa384x_usbctlx* get_active_ctlx (struct hfa384x*) ;
 struct hfa384x* hw ;
 int list_empty (int *) ;
 int reqtimer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_unlink_urb (TYPE_2__*) ;

__attribute__((used)) static void hfa384x_usbctlx_reqtimerfn(struct timer_list *t)
{
 struct hfa384x *hw = from_timer(hw, t, reqtimer);
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 hw->req_timer_done = 1;




 if (!list_empty(&hw->ctlxq.active)) {




  hw->ctlx_urb.transfer_flags |= URB_ASYNC_UNLINK;
  if (usb_unlink_urb(&hw->ctlx_urb) == -EINPROGRESS) {
   struct hfa384x_usbctlx *ctlx = get_active_ctlx(hw);

   ctlx->state = CTLX_REQ_FAILED;
   if (del_timer(&hw->resptimer) != 0)
    hw->resp_timer_done = 1;
  }
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
