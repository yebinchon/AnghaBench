
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {int dummy; } ;


 unsigned long pch_udc_ep_readl (struct pch_udc_ep*,unsigned long) ;
 int pch_udc_ep_writel (struct pch_udc_ep*,unsigned long,unsigned long) ;

__attribute__((used)) static inline void pch_udc_ep_bit_set(struct pch_udc_ep *ep,
         unsigned long reg,
         unsigned long bitmask)
{
 pch_udc_ep_writel(ep, pch_udc_ep_readl(ep, reg) | bitmask, reg);
}
