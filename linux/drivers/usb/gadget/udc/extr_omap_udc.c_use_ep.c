
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_ep {int bEndpointAddress; } ;


 int UDC_EP_DIR ;
 int UDC_EP_NUM ;
 int USB_DIR_IN ;
 int omap_writew (int,int ) ;

__attribute__((used)) static void use_ep(struct omap_ep *ep, u16 select)
{
 u16 num = ep->bEndpointAddress & 0x0f;

 if (ep->bEndpointAddress & USB_DIR_IN)
  num |= UDC_EP_DIR;
 omap_writew(num | select, UDC_EP_NUM);

}
