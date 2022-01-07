
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int dummy; } ;
struct bcm63xx_udc {int lock; int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static int bcm63xx_ep0_setup_callback(struct bcm63xx_udc *udc,
 struct usb_ctrlrequest *ctrl)
{
 int rc;

 spin_unlock_irq(&udc->lock);
 rc = udc->driver->setup(&udc->gadget, ctrl);
 spin_lock_irq(&udc->lock);
 return rc;
}
