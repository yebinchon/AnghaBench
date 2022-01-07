
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct pxa_udc {int dummy; } ;


 int UDCFNR ;
 struct pxa_udc* to_gadget_udc (struct usb_gadget*) ;
 int udc_readl (struct pxa_udc*,int ) ;

__attribute__((used)) static int pxa_udc_get_frame(struct usb_gadget *_gadget)
{
 struct pxa_udc *udc = to_gadget_udc(_gadget);

 return (udc_readl(udc, UDCFNR) & 0x7ff);
}
