
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pch_udc_ep {int dummy; } ;


 int UDC_EPCTL_ADDR ;
 int UDC_EPCTL_ET_MASK ;
 int UDC_EPCTL_ET_SHIFT ;
 int pch_udc_ep_writel (struct pch_udc_ep*,int,int ) ;

__attribute__((used)) static inline void pch_udc_ep_set_trfr_type(struct pch_udc_ep *ep,
     u8 type)
{
 pch_udc_ep_writel(ep, ((type << UDC_EPCTL_ET_SHIFT) &
    UDC_EPCTL_ET_MASK), UDC_EPCTL_ADDR);
}
