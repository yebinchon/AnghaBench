
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_ep {int addr; int udc; } ;


 int DC_ENDPIDX (int) ;
 int DC_EPDIR ;
 int DC_EPINDEX ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int isp1760_udc_write (int ,int ,int) ;

__attribute__((used)) static void __isp1760_udc_select_ep(struct isp1760_ep *ep, int dir)
{
 isp1760_udc_write(ep->udc, DC_EPINDEX,
     DC_ENDPIDX(ep->addr & USB_ENDPOINT_NUMBER_MASK) |
     (dir == USB_DIR_IN ? DC_EPDIR : 0));
}
