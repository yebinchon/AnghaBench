
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct lpc32xx_udc {int dummy; } ;


 int pullup (struct lpc32xx_udc*,int) ;
 struct lpc32xx_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int lpc32xx_pullup(struct usb_gadget *gadget, int is_on)
{
 struct lpc32xx_udc *udc = to_udc(gadget);


 pullup(udc, is_on);

 return 0;
}
