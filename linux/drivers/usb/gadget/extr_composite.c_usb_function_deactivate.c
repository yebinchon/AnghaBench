
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {scalar_t__ deactivations; int lock; int gadget; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_gadget_deactivate (int ) ;

int usb_function_deactivate(struct usb_function *function)
{
 struct usb_composite_dev *cdev = function->config->cdev;
 unsigned long flags;
 int status = 0;

 spin_lock_irqsave(&cdev->lock, flags);

 if (cdev->deactivations == 0)
  status = usb_gadget_deactivate(cdev->gadget);
 if (status == 0)
  cdev->deactivations++;

 spin_unlock_irqrestore(&cdev->lock, flags);
 return status;
}
