
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfa384x_usbctlx {int state; } ;
struct TYPE_2__ {int transfer_flags; } ;
struct hfa384x {TYPE_1__ ctlx_urb; } ;


 int CTLX_REQ_FAILED ;
 int EINPROGRESS ;
 int URB_ASYNC_UNLINK ;
 int unlocked_usbctlx_complete (struct hfa384x*,struct hfa384x_usbctlx*) ;
 int usb_unlink_urb (TYPE_1__*) ;

__attribute__((used)) static int unlocked_usbctlx_cancel_async(struct hfa384x *hw,
      struct hfa384x_usbctlx *ctlx)
{
 int ret;






 hw->ctlx_urb.transfer_flags |= URB_ASYNC_UNLINK;
 ret = usb_unlink_urb(&hw->ctlx_urb);

 if (ret != -EINPROGRESS) {






  ctlx->state = CTLX_REQ_FAILED;
  unlocked_usbctlx_complete(hw, ctlx);
  ret = 0;
 }

 return ret;
}
