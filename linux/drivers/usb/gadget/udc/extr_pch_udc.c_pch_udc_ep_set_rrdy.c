
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {int dummy; } ;


 int UDC_EPCTL_ADDR ;
 int UDC_EPCTL_RRDY ;
 int pch_udc_ep_bit_set (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_ep_set_rrdy(struct pch_udc_ep *ep)
{
 pch_udc_ep_bit_set(ep, UDC_EPCTL_ADDR, UDC_EPCTL_RRDY);
}
