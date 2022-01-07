
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbctlx_completor {int (* complete ) (struct usbctlx_completor*) ;} ;
struct TYPE_5__ {int type; } ;
struct hfa384x_usbctlx {int reapable; scalar_t__ state; int list; TYPE_2__ outbuf; int done; } ;
struct TYPE_6__ {int lock; int completing; } ;
struct hfa384x {int req_timer_done; int resp_timer_done; TYPE_3__ ctlxq; TYPE_1__* wlandev; int ctlx_urb; int resptimer; int reqtimer; } ;
struct TYPE_4__ {int netdev; scalar_t__ hwremoved; } ;


 scalar_t__ CTLX_COMPLETE ;
 scalar_t__ CTLX_REQ_FAILED ;
 int EIO ;
 int ENODEV ;
 int ctlxstr (scalar_t__) ;
 int del_singleshot_timer_sync (int *) ;
 struct hfa384x_usbctlx* get_active_ctlx (struct hfa384x*) ;
 int hfa384x_usbctlxq_run (struct hfa384x*) ;
 int kfree (struct hfa384x_usbctlx*) ;
 int le16_to_cpu (int ) ;
 int list_del (int *) ;
 int list_move_tail (int *,int *) ;
 int netdev_warn (int ,char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct usbctlx_completor*) ;
 int usb_kill_urb (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int hfa384x_usbctlx_complete_sync(struct hfa384x *hw,
      struct hfa384x_usbctlx *ctlx,
      struct usbctlx_completor *completor)
{
 unsigned long flags;
 int result;

 result = wait_for_completion_interruptible(&ctlx->done);

 spin_lock_irqsave(&hw->ctlxq.lock, flags);





cleanup:
 if (hw->wlandev->hwremoved) {
  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
  result = -ENODEV;
 } else if (result != 0) {
  int runqueue = 0;
  if (ctlx == get_active_ctlx(hw)) {
   spin_unlock_irqrestore(&hw->ctlxq.lock, flags);

   del_singleshot_timer_sync(&hw->reqtimer);
   del_singleshot_timer_sync(&hw->resptimer);
   hw->req_timer_done = 1;
   hw->resp_timer_done = 1;
   usb_kill_urb(&hw->ctlx_urb);

   spin_lock_irqsave(&hw->ctlxq.lock, flags);

   runqueue = 1;





   if (hw->wlandev->hwremoved)
    goto cleanup;
  }






  ctlx->reapable = 1;
  ctlx->state = CTLX_REQ_FAILED;
  list_move_tail(&ctlx->list, &hw->ctlxq.completing);

  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);

  if (runqueue)
   hfa384x_usbctlxq_run(hw);
 } else {
  if (ctlx->state == CTLX_COMPLETE) {
   result = completor->complete(completor);
  } else {
   netdev_warn(hw->wlandev->netdev, "CTLX[%d] error: state(%s)\n",
        le16_to_cpu(ctlx->outbuf.type),
        ctlxstr(ctlx->state));
   result = -EIO;
  }

  list_del(&ctlx->list);
  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
  kfree(ctlx);
 }

 return result;
}
