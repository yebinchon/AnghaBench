
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {scalar_t__ in; } ;


 int UDC_DESPTR_ADDR ;
 int UDC_EPCTL_ADDR ;
 int UDC_EPCTL_F ;
 int UDC_EPCTL_SNAK ;
 int UDC_EPSTS_ADDR ;
 int UDC_EPSTS_IN ;
 int pch_udc_ep_bit_set (struct pch_udc_ep*,int ,int ) ;
 int pch_udc_ep_writel (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static void pch_udc_ep_disable(struct pch_udc_ep *ep)
{
 if (ep->in) {

  pch_udc_ep_writel(ep, UDC_EPCTL_F, UDC_EPCTL_ADDR);

  pch_udc_ep_writel(ep, UDC_EPCTL_SNAK, UDC_EPCTL_ADDR);
  pch_udc_ep_bit_set(ep, UDC_EPSTS_ADDR, UDC_EPSTS_IN);
 } else {

  pch_udc_ep_writel(ep, UDC_EPCTL_SNAK, UDC_EPCTL_ADDR);
 }

 pch_udc_ep_writel(ep, 0, UDC_DESPTR_ADDR);
}
