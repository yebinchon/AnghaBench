
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct pxa_udc {int vbus_sensed; } ;


 scalar_t__ should_disable_udc (struct pxa_udc*) ;
 scalar_t__ should_enable_udc (struct pxa_udc*) ;
 struct pxa_udc* to_gadget_udc (struct usb_gadget*) ;
 int udc_disable (struct pxa_udc*) ;
 int udc_enable (struct pxa_udc*) ;

__attribute__((used)) static int pxa_udc_vbus_session(struct usb_gadget *_gadget, int is_active)
{
 struct pxa_udc *udc = to_gadget_udc(_gadget);

 udc->vbus_sensed = is_active;
 if (should_enable_udc(udc))
  udc_enable(udc);
 if (should_disable_udc(udc))
  udc_disable(udc);

 return 0;
}
