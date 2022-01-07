
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct isp1760_udc {int connected; int isp; } ;


 struct isp1760_udc* gadget_to_udc (struct usb_gadget*) ;
 int isp1760_set_pullup (int ,int) ;

__attribute__((used)) static int isp1760_udc_pullup(struct usb_gadget *gadget, int is_on)
{
 struct isp1760_udc *udc = gadget_to_udc(gadget);

 isp1760_set_pullup(udc->isp, is_on);
 udc->connected = is_on;

 return 0;
}
