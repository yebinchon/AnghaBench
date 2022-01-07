
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_ep {int addr; } ;


 int USB_ENDPOINT_DIR_MASK ;
 int __isp1760_udc_select_ep (struct isp1760_ep*,int) ;

__attribute__((used)) static void isp1760_udc_select_ep(struct isp1760_ep *ep)
{
 __isp1760_udc_select_ep(ep, ep->addr & USB_ENDPOINT_DIR_MASK);
}
