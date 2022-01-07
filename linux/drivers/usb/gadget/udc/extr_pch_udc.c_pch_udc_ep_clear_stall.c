
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {int dummy; } ;


 int UDC_EPCTL_ADDR ;
 int UDC_EPCTL_CNAK ;
 int UDC_EPCTL_S ;
 int pch_udc_ep_bit_clr (struct pch_udc_ep*,int ,int ) ;
 int pch_udc_ep_bit_set (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_ep_clear_stall(struct pch_udc_ep *ep)
{

 pch_udc_ep_bit_clr(ep, UDC_EPCTL_ADDR, UDC_EPCTL_S);

 pch_udc_ep_bit_set(ep, UDC_EPCTL_ADDR, UDC_EPCTL_CNAK);
}
