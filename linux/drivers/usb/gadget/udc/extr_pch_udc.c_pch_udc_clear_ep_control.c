
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {int dummy; } ;


 int UDC_EPCTL_ADDR ;
 void pch_udc_ep_writel (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_clear_ep_control(struct pch_udc_ep *ep)
{
 return pch_udc_ep_writel(ep, 0, UDC_EPCTL_ADDR);
}
