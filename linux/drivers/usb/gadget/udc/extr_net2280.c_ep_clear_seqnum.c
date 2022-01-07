
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net2280_ep {size_t num; struct net2280* dev; } ;
struct net2280 {TYPE_1__* plregs; } ;
struct TYPE_2__ {int pl_ep_ctrl; } ;


 int BIT (int ) ;
 int SEQUENCE_NUMBER_RESET ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void ep_clear_seqnum(struct net2280_ep *ep)
{
 struct net2280 *dev = ep->dev;
 u32 val;
 static const u32 ep_pl[9] = { 0, 3, 4, 7, 8, 2, 5, 6, 9 };

 val = readl(&dev->plregs->pl_ep_ctrl) & ~0x1f;
 val |= ep_pl[ep->num];
 writel(val, &dev->plregs->pl_ep_ctrl);
 val |= BIT(SEQUENCE_NUMBER_RESET);
 writel(val, &dev->plregs->pl_ep_ctrl);

 return;
}
