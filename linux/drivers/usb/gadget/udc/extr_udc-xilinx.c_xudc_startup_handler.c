
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int speed; } ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;scalar_t__ usb_state; int lock; TYPE_2__ gadget; TYPE_1__* driver; scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int) ;int dev; scalar_t__ remote_wkp; } ;
struct TYPE_5__ {int (* disconnect ) (TYPE_2__*) ;int (* resume ) (TYPE_2__*) ;int (* suspend ) (TYPE_2__*) ;} ;


 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 scalar_t__ USB_STATE_SUSPENDED ;
 scalar_t__ XUSB_ADDRESS_OFFSET ;
 scalar_t__ XUSB_IER_OFFSET ;
 int XUSB_STATUS_DISCONNECT_MASK ;
 int XUSB_STATUS_HIGH_SPEED_MASK ;
 int XUSB_STATUS_RESET_MASK ;
 int XUSB_STATUS_RESUME_MASK ;
 int XUSB_STATUS_SUSPEND_MASK ;
 scalar_t__ XUSB_TESTMODE_OFFSET ;
 int dev_WARN_ONCE (int ,int,char*) ;
 int dev_dbg (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (scalar_t__,scalar_t__,int) ;
 int stub10 (TYPE_2__*) ;
 int stub11 (scalar_t__) ;
 int stub12 (scalar_t__,scalar_t__,int) ;
 int stub13 (TYPE_2__*) ;
 int stub2 (scalar_t__,scalar_t__,int) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__,scalar_t__,int) ;
 int stub5 (scalar_t__) ;
 int stub6 (scalar_t__,scalar_t__,int) ;
 int stub7 (TYPE_2__*) ;
 int stub8 (scalar_t__) ;
 int stub9 (scalar_t__,scalar_t__,int) ;
 int xudc_clear_stall_all_ep (struct xusb_udc*) ;
 int xudc_stop_activity (struct xusb_udc*) ;

__attribute__((used)) static void xudc_startup_handler(struct xusb_udc *udc, u32 intrstatus)
{
 u32 intrreg;

 if (intrstatus & XUSB_STATUS_RESET_MASK) {

  dev_dbg(udc->dev, "Reset\n");

  if (intrstatus & XUSB_STATUS_HIGH_SPEED_MASK)
   udc->gadget.speed = USB_SPEED_HIGH;
  else
   udc->gadget.speed = USB_SPEED_FULL;

  xudc_stop_activity(udc);
  xudc_clear_stall_all_ep(udc);
  udc->write_fn(udc->addr, XUSB_TESTMODE_OFFSET, 0);


  udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);
  udc->remote_wkp = 0;


  intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
  intrreg |= XUSB_STATUS_SUSPEND_MASK | XUSB_STATUS_RESUME_MASK |
      XUSB_STATUS_DISCONNECT_MASK;
  udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);
 }
 if (intrstatus & XUSB_STATUS_SUSPEND_MASK) {

  dev_dbg(udc->dev, "Suspend\n");


  intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
  intrreg |= XUSB_STATUS_RESET_MASK | XUSB_STATUS_RESUME_MASK |
      XUSB_STATUS_DISCONNECT_MASK;
  udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);

  udc->usb_state = USB_STATE_SUSPENDED;

  if (udc->driver->suspend) {
   spin_unlock(&udc->lock);
   udc->driver->suspend(&udc->gadget);
   spin_lock(&udc->lock);
  }
 }
 if (intrstatus & XUSB_STATUS_RESUME_MASK) {
  bool condition = (udc->usb_state != USB_STATE_SUSPENDED);

  dev_WARN_ONCE(udc->dev, condition,
    "Resume IRQ while not suspended\n");

  dev_dbg(udc->dev, "Resume\n");


  intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
  intrreg |= XUSB_STATUS_RESET_MASK | XUSB_STATUS_SUSPEND_MASK |
      XUSB_STATUS_DISCONNECT_MASK;
  udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);

  udc->usb_state = 0;

  if (udc->driver->resume) {
   spin_unlock(&udc->lock);
   udc->driver->resume(&udc->gadget);
   spin_lock(&udc->lock);
  }
 }
 if (intrstatus & XUSB_STATUS_DISCONNECT_MASK) {

  dev_dbg(udc->dev, "Disconnect\n");


  intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
  intrreg |= XUSB_STATUS_RESET_MASK | XUSB_STATUS_RESUME_MASK |
      XUSB_STATUS_SUSPEND_MASK;
  udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);

  if (udc->driver && udc->driver->disconnect) {
   spin_unlock(&udc->lock);
   udc->driver->disconnect(&udc->gadget);
   spin_lock(&udc->lock);
  }
 }
}
