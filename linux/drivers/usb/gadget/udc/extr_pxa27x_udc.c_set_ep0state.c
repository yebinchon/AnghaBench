
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int ep0state; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int dummy; } ;


 char* EP0_STNAME (struct pxa_udc*) ;
 int UDCBCR ;
 int UDCCSR ;
 int ep_dbg (struct pxa_ep*,char*,char*,char*,int ,int ) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;

__attribute__((used)) static void set_ep0state(struct pxa_udc *udc, int state)
{
 struct pxa_ep *ep = &udc->pxa_ep[0];
 char *old_stname = EP0_STNAME(udc);

 udc->ep0state = state;
 ep_dbg(ep, "state=%s->%s, udccsr0=0x%03x, udcbcr=%d\n", old_stname,
  EP0_STNAME(udc), udc_ep_readl(ep, UDCCSR),
  udc_ep_readl(ep, UDCBCR));
}
