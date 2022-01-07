
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int dummy; } ;
struct usb_gadget {int dummy; } ;


 int FNUM ;
 int FRAME_NUMBER ;
 int USBA_BFEXT (int ,int ) ;
 struct usba_udc* to_usba_udc (struct usb_gadget*) ;
 int usba_readl (struct usba_udc*,int ) ;

__attribute__((used)) static int usba_udc_get_frame(struct usb_gadget *gadget)
{
 struct usba_udc *udc = to_usba_udc(gadget);

 return USBA_BFEXT(FRAME_NUMBER, usba_readl(udc, FNUM));
}
