
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {int status; struct hfa384x* context; } ;
struct TYPE_6__ {int type; } ;
struct hfa384x_usbctlx {int state; TYPE_1__ outbuf; } ;
struct TYPE_8__ {int lock; int active; } ;
struct hfa384x {int req_timer_done; int resp_timer_done; TYPE_3__ ctlxq; int resptimer; int usb_work; TYPE_2__* wlandev; int usb_flags; int reqtimer; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {TYPE_4__* netdev; } ;


 int CTLX_COMPLETE ;
 int CTLX_REQ_COMPLETE ;
 int CTLX_REQ_FAILED ;


 int ENODEV ;
 int EPIPE ;
 int ESHUTDOWN ;
 int WORK_TX_HALT ;
 int ctlxstr (int) ;
 int dbprint_urb (struct urb*) ;
 int del_timer (int *) ;
 struct hfa384x_usbctlx* get_active_ctlx (struct hfa384x*) ;
 int hfa384x_usbctlxq_run (struct hfa384x*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ list_empty (int *) ;
 int netdev_err (TYPE_4__*,char*,int ,int ,int ) ;
 int netdev_warn (TYPE_4__*,char*,int ) ;
 int pr_debug (char*,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 int unlocked_usbctlx_complete (struct hfa384x*,struct hfa384x_usbctlx*) ;

__attribute__((used)) static void hfa384x_ctlxout_callback(struct urb *urb)
{
 struct hfa384x *hw = urb->context;
 int delete_resptimer = 0;
 int timer_ok = 1;
 int run_queue = 0;
 struct hfa384x_usbctlx *ctlx;
 unsigned long flags;

 pr_debug("urb->status=%d\n", urb->status);



 if ((urb->status == -ESHUTDOWN) ||
     (urb->status == -ENODEV) || !hw)
  return;

retry:
 spin_lock_irqsave(&hw->ctlxq.lock, flags);







 if (list_empty(&hw->ctlxq.active)) {
  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
  return;
 }





 if (del_timer(&hw->reqtimer) == 0) {
  if (hw->req_timer_done == 0) {





   spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
   goto retry;
  }
 } else {
  hw->req_timer_done = 1;
 }

 ctlx = get_active_ctlx(hw);

 if (urb->status == 0) {

  switch (ctlx->state) {
  case 129:

   ctlx->state = CTLX_REQ_COMPLETE;
   break;

  case 128:



   ctlx->state = CTLX_COMPLETE;
   unlocked_usbctlx_complete(hw, ctlx);
   run_queue = 1;
   break;

  default:

   netdev_err(hw->wlandev->netdev,
       "Illegal CTLX[%d] success state(%s, %d) in OUT URB\n",
       le16_to_cpu(ctlx->outbuf.type),
       ctlxstr(ctlx->state), urb->status);
   break;
  }
 } else {

  if ((urb->status == -EPIPE) &&
      !test_and_set_bit(WORK_TX_HALT, &hw->usb_flags)) {
   netdev_warn(hw->wlandev->netdev,
        "%s tx pipe stalled: requesting reset\n",
        hw->wlandev->netdev->name);
   schedule_work(&hw->usb_work);
  }




  ctlx->state = CTLX_REQ_FAILED;
  unlocked_usbctlx_complete(hw, ctlx);
  delete_resptimer = 1;
  run_queue = 1;
 }

delresp:
 if (delete_resptimer) {
  timer_ok = del_timer(&hw->resptimer);
  if (timer_ok != 0)
   hw->resp_timer_done = 1;
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);

 if (!timer_ok && (hw->resp_timer_done == 0)) {
  spin_lock_irqsave(&hw->ctlxq.lock, flags);
  goto delresp;
 }

 if (run_queue)
  hfa384x_usbctlxq_run(hw);
}
