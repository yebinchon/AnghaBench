
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {scalar_t__ in; } ;


 int UDC_EPCTL_ADDR ;
 int UDC_EPCTL_F ;
 int UDC_EPCTL_S ;
 int pch_udc_ep_bit_set (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static void pch_udc_ep_set_stall(struct pch_udc_ep *ep)
{
 if (ep->in) {
  pch_udc_ep_bit_set(ep, UDC_EPCTL_ADDR, UDC_EPCTL_F);
  pch_udc_ep_bit_set(ep, UDC_EPCTL_ADDR, UDC_EPCTL_S);
 } else {
  pch_udc_ep_bit_set(ep, UDC_EPCTL_ADDR, UDC_EPCTL_S);
 }
}
