
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wa_xfer {TYPE_2__* wa; int result; int urb; int list_node; } ;
struct TYPE_4__ {TYPE_1__* wusb; int xfer_list_lock; } ;
struct TYPE_3__ {int usb_hcd; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_unlink_urb_from_ep (int *,int ) ;
 int wa_put (TYPE_2__*) ;
 int wa_xfer_put (struct wa_xfer*) ;
 int wusbhc_giveback_urb (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void wa_xfer_giveback(struct wa_xfer *xfer)
{
 unsigned long flags;

 spin_lock_irqsave(&xfer->wa->xfer_list_lock, flags);
 list_del_init(&xfer->list_node);
 usb_hcd_unlink_urb_from_ep(&(xfer->wa->wusb->usb_hcd), xfer->urb);
 spin_unlock_irqrestore(&xfer->wa->xfer_list_lock, flags);

 wusbhc_giveback_urb(xfer->wa->wusb, xfer->urb, xfer->result);
 wa_put(xfer->wa);
 wa_xfer_put(xfer);
}
