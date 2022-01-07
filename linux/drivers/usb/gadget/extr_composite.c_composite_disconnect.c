
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct usb_composite_dev {int lock; TYPE_1__* driver; scalar_t__ config; scalar_t__ suspended; } ;
struct TYPE_2__ {int (* disconnect ) (struct usb_composite_dev*) ;} ;


 struct usb_composite_dev* get_gadget_data (struct usb_gadget*) ;
 int reset_config (struct usb_composite_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct usb_composite_dev*) ;

void composite_disconnect(struct usb_gadget *gadget)
{
 struct usb_composite_dev *cdev = get_gadget_data(gadget);
 unsigned long flags;




 spin_lock_irqsave(&cdev->lock, flags);
 cdev->suspended = 0;
 if (cdev->config)
  reset_config(cdev);
 if (cdev->driver->disconnect)
  cdev->driver->disconnect(cdev);
 spin_unlock_irqrestore(&cdev->lock, flags);
}
