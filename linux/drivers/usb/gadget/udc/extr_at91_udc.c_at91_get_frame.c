
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct at91_udc {int clocked; } ;


 int AT91_UDP_FRM_NUM ;
 int AT91_UDP_NUM ;
 int EINVAL ;
 int at91_udp_read (struct at91_udc*,int ) ;
 struct at91_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int at91_get_frame(struct usb_gadget *gadget)
{
 struct at91_udc *udc = to_udc(gadget);

 if (!to_udc(gadget)->clocked)
  return -EINVAL;
 return at91_udp_read(udc, AT91_UDP_FRM_NUM) & AT91_UDP_NUM;
}
