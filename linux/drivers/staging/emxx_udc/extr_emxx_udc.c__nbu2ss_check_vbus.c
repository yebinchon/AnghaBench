
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nbu2ss_udc {int vbus_active; scalar_t__ devstate; scalar_t__ linux_suspended; int dev; int lock; int gadget; TYPE_1__* driver; scalar_t__ usb_suspended; } ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 scalar_t__ USB_STATE_POWERED ;
 int VBUS_CHATTERING_MDELAY ;
 int _nbu2ss_disable_controller (struct nbu2ss_udc*) ;
 int _nbu2ss_dump_register (struct nbu2ss_udc*) ;
 int _nbu2ss_enable_controller (struct nbu2ss_udc*) ;
 int _nbu2ss_pullup (struct nbu2ss_udc*,int) ;
 int _nbu2ss_quiesce (struct nbu2ss_udc*) ;
 int _nbu2ss_reset_controller (struct nbu2ss_udc*) ;
 int dev_info (int ,char*) ;
 scalar_t__ gpiod_get_value (int ) ;
 int mdelay (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *) ;
 int vbus_gpio ;

__attribute__((used)) static inline void _nbu2ss_check_vbus(struct nbu2ss_udc *udc)
{
 int nret;
 u32 reg_dt;


 mdelay(VBUS_CHATTERING_MDELAY);


 reg_dt = gpiod_get_value(vbus_gpio);
 if (reg_dt == 0) {
  udc->linux_suspended = 0;

  _nbu2ss_reset_controller(udc);
  dev_info(udc->dev, " ----- VBUS OFF\n");

  if (udc->vbus_active == 1) {

   udc->vbus_active = 0;
   if (udc->usb_suspended) {
    udc->usb_suspended = 0;

   }
   udc->devstate = USB_STATE_NOTATTACHED;

   _nbu2ss_quiesce(udc);
   if (udc->driver) {
    spin_unlock(&udc->lock);
    udc->driver->disconnect(&udc->gadget);
    spin_lock(&udc->lock);
   }

   _nbu2ss_disable_controller(udc);
  }
 } else {
  mdelay(5);
  reg_dt = gpiod_get_value(vbus_gpio);
  if (reg_dt == 0)
   return;

  dev_info(udc->dev, " ----- VBUS ON\n");

  if (udc->linux_suspended)
   return;

  if (udc->vbus_active == 0) {

   udc->vbus_active = 1;
   udc->devstate = USB_STATE_POWERED;

   nret = _nbu2ss_enable_controller(udc);
   if (nret < 0) {
    _nbu2ss_disable_controller(udc);
    udc->vbus_active = 0;
    return;
   }

   _nbu2ss_pullup(udc, 1);





  } else {
   if (udc->devstate == USB_STATE_POWERED)
    _nbu2ss_pullup(udc, 1);
  }
 }
}
