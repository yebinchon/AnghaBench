
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_ep {int dir_in; } ;


 int EOPNOTSUPP ;
 int UDCCSR ;
 int UDCCSR0_IPR ;
 int UDCCSR_BNF ;
 scalar_t__ is_ep0 (struct pxa_ep*) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;

__attribute__((used)) static int ep_is_full(struct pxa_ep *ep)
{
 if (is_ep0(ep))
  return (udc_ep_readl(ep, UDCCSR) & UDCCSR0_IPR);
 if (!ep->dir_in)
  return -EOPNOTSUPP;
 return (!(udc_ep_readl(ep, UDCCSR) & UDCCSR_BNF));
}
