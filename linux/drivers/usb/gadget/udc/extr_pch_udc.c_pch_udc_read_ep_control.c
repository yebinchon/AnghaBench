
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_ep {int dummy; } ;


 int UDC_EPCTL_ADDR ;
 int pch_udc_ep_readl (struct pch_udc_ep*,int ) ;

__attribute__((used)) static inline u32 pch_udc_read_ep_control(struct pch_udc_ep *ep)
{
 return pch_udc_ep_readl(ep, UDC_EPCTL_ADDR);
}
