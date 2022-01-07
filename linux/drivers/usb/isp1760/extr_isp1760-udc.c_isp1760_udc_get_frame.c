
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct isp1760_udc {int dummy; } ;


 int DC_FRAMENUM ;
 struct isp1760_udc* gadget_to_udc (struct usb_gadget*) ;
 int isp1760_udc_read (struct isp1760_udc*,int ) ;

__attribute__((used)) static int isp1760_udc_get_frame(struct usb_gadget *gadget)
{
 struct isp1760_udc *udc = gadget_to_udc(gadget);

 return isp1760_udc_read(udc, DC_FRAMENUM) & ((1 << 11) - 1);
}
