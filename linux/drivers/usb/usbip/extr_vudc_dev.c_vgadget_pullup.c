
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int dev; int speed; } ;
struct vudc {int pullup; int lock; int ud; scalar_t__ desc_cached; TYPE_4__ gadget; TYPE_3__* ep; TYPE_1__* driver; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_6__ {int maxpacket; } ;
struct TYPE_7__ {TYPE_2__ ep; } ;
struct TYPE_5__ {int max_speed; } ;


 int USB_SPEED_HIGH ;
 int VUDC_EVENT_REMOVED ;
 int dev_err (int *,char*,int) ;
 int get_gadget_descs (struct vudc*) ;
 int min_t (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int u8 ;
 struct vudc* usb_gadget_to_vudc (struct usb_gadget*) ;
 int usbip_event_add (int *,int ) ;
 int usbip_start_eh (int *) ;
 int usbip_stop_eh (int *) ;

__attribute__((used)) static int vgadget_pullup(struct usb_gadget *_gadget, int value)
{
 struct vudc *udc = usb_gadget_to_vudc(_gadget);
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&udc->lock, flags);
 value = !!value;
 if (value == udc->pullup)
  goto unlock;

 udc->pullup = value;
 if (value) {
  udc->gadget.speed = min_t(u8, USB_SPEED_HIGH,
        udc->driver->max_speed);
  udc->ep[0].ep.maxpacket = 64;




  ret = get_gadget_descs(udc);
  if (ret) {
   dev_err(&udc->gadget.dev, "Unable go get desc: %d", ret);
   goto unlock;
  }

  spin_unlock_irqrestore(&udc->lock, flags);
  usbip_start_eh(&udc->ud);
 } else {

  udc->desc_cached = 0;

  spin_unlock_irqrestore(&udc->lock, flags);
  usbip_event_add(&udc->ud, VUDC_EVENT_REMOVED);
  usbip_stop_eh(&udc->ud);
 }

 return 0;

unlock:
 spin_unlock_irqrestore(&udc->lock, flags);
 return 0;
}
