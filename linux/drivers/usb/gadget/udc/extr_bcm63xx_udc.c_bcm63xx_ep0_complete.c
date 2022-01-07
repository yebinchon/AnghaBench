
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int status; int (* complete ) (int *,struct usb_request*) ;scalar_t__ actual; } ;
struct bcm63xx_udc {int lock; TYPE_1__* bep; } ;
struct TYPE_2__ {int ep; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int *,struct usb_request*) ;

__attribute__((used)) static void bcm63xx_ep0_complete(struct bcm63xx_udc *udc,
 struct usb_request *req, int status)
{
 req->status = status;
 if (status)
  req->actual = 0;
 if (req->complete) {
  spin_unlock_irq(&udc->lock);
  req->complete(&udc->bep[0].ep, req);
  spin_lock_irq(&udc->lock);
 }
}
