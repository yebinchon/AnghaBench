
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qe_udc {int lock; int driver; int gadget; } ;


 scalar_t__ USB_MAX_ENDPOINTS ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udc_reset_ep_queue (struct qe_udc*,scalar_t__) ;
 int usb_gadget_udc_reset (int *,int ) ;

__attribute__((used)) static int reset_queues(struct qe_udc *udc)
{
 u8 pipe;

 for (pipe = 0; pipe < USB_MAX_ENDPOINTS; pipe++)
  udc_reset_ep_queue(udc, pipe);


 spin_unlock(&udc->lock);
 usb_gadget_udc_reset(&udc->gadget, udc->driver);
 spin_lock(&udc->lock);

 return 0;
}
