
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net2280_ep {size_t num; TYPE_2__* dev; } ;
struct TYPE_4__ {int quirks; TYPE_1__* regs; } ;
struct TYPE_3__ {int pciirqenb0; } ;


 int BIT (size_t) ;
 int PLX_LEGACY ;
 size_t* ep_bit ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static inline void enable_pciirqenb(struct net2280_ep *ep)
{
 u32 tmp = readl(&ep->dev->regs->pciirqenb0);

 if (ep->dev->quirks & PLX_LEGACY)
  tmp |= BIT(ep->num);
 else
  tmp |= BIT(ep_bit[ep->num]);
 writel(tmp, &ep->dev->regs->pciirqenb0);

 return;
}
