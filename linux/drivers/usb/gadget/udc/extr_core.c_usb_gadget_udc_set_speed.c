
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_udc {TYPE_2__* gadget; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_4__ {TYPE_1__* ops; int max_speed; } ;
struct TYPE_3__ {int (* udc_set_speed ) (TYPE_2__*,int) ;} ;


 int min (int,int ) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static inline void usb_gadget_udc_set_speed(struct usb_udc *udc,
         enum usb_device_speed speed)
{
 if (udc->gadget->ops->udc_set_speed) {
  enum usb_device_speed s;

  s = min(speed, udc->gadget->max_speed);
  udc->gadget->ops->udc_set_speed(udc->gadget, s);
 }
}
