
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbu2ss_udc {int usb_suspended; int lock; int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* resume ) (int *) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static inline void _nbu2ss_int_usb_resume(struct nbu2ss_udc *udc)
{
 if (udc->usb_suspended == 1) {
  udc->usb_suspended = 0;
  if (udc->driver && udc->driver->resume) {
   spin_unlock(&udc->lock);
   udc->driver->resume(&udc->gadget);
   spin_lock(&udc->lock);
  }
 }
}
