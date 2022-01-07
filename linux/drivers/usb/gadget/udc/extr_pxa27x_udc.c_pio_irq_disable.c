
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_udc {int dummy; } ;
struct pxa_ep {struct pxa_udc* dev; } ;


 int EPIDX (struct pxa_ep*) ;
 int UDCICR0 ;
 int UDCICR1 ;
 int udc_readl (struct pxa_udc*,int ) ;
 int udc_writel (struct pxa_udc*,int ,int) ;

__attribute__((used)) static void pio_irq_disable(struct pxa_ep *ep)
{
 struct pxa_udc *udc = ep->dev;
 int index = EPIDX(ep);
 u32 udcicr0 = udc_readl(udc, UDCICR0);
 u32 udcicr1 = udc_readl(udc, UDCICR1);

 if (index < 16)
  udc_writel(udc, UDCICR0, udcicr0 & ~(3 << (index * 2)));
 else
  udc_writel(udc, UDCICR1, udcicr1 & ~(3 << ((index - 16) * 2)));
}
