
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nbu2ss_udc {int usb_suspended; TYPE_1__* p_regs; int lock; int gadget; TYPE_2__* driver; } ;
struct TYPE_4__ {int (* suspend ) (int *) ;} ;
struct TYPE_3__ {int USB_CONTROL; } ;


 int SUSPEND ;
 int _nbu2ss_bitset (int *,int ) ;
 scalar_t__ gpiod_get_value (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int vbus_gpio ;

__attribute__((used)) static inline void _nbu2ss_int_usb_suspend(struct nbu2ss_udc *udc)
{
 u32 reg_dt;

 if (udc->usb_suspended == 0) {
  reg_dt = gpiod_get_value(vbus_gpio);

  if (reg_dt == 0)
   return;

  udc->usb_suspended = 1;
  if (udc->driver && udc->driver->suspend) {
   spin_unlock(&udc->lock);
   udc->driver->suspend(&udc->gadget);
   spin_lock(&udc->lock);
  }

  _nbu2ss_bitset(&udc->p_regs->USB_CONTROL, SUSPEND);
 }
}
