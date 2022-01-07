
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_ep {int dummy; } ;


 int UDC_DESPTR_ADDR ;
 int pch_udc_ep_writel (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_ep_set_ddptr(struct pch_udc_ep *ep, u32 addr)
{
 pch_udc_ep_writel(ep, addr, UDC_DESPTR_ADDR);
}
