
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_ep {int dummy; } ;


 int UDC_EPSTS_ADDR ;
 void pch_udc_ep_writel (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_clear_ep_status(struct pch_udc_ep *ep,
      u32 stat)
{
 return pch_udc_ep_writel(ep, stat, UDC_EPSTS_ADDR);
}
