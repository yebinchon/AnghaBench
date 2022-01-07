
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; int speed; } ;
struct isp1760_udc {int vbus_timer; TYPE_3__ gadget; TYPE_1__* driver; TYPE_2__* isp; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* disconnect ) (TYPE_3__*) ;} ;


 int USB_SPEED_UNKNOWN ;
 int USB_STATE_ATTACHED ;
 scalar_t__ USB_STATE_POWERED ;
 int del_timer (int *) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int stub1 (TYPE_3__*) ;
 int usb_gadget_set_state (TYPE_3__*,int ) ;

__attribute__((used)) static void isp1760_udc_disconnect(struct isp1760_udc *udc)
{
 if (udc->gadget.state < USB_STATE_POWERED)
  return;

 dev_dbg(udc->isp->dev, "Device disconnected in state %u\n",
   udc->gadget.state);

 udc->gadget.speed = USB_SPEED_UNKNOWN;
 usb_gadget_set_state(&udc->gadget, USB_STATE_ATTACHED);

 if (udc->driver->disconnect)
  udc->driver->disconnect(&udc->gadget);

 del_timer(&udc->vbus_timer);


}
