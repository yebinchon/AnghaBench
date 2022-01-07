
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clear_ep_rxintr ) (struct musb*,int) ;} ;


 int stub1 (struct musb*,int) ;

__attribute__((used)) static inline void musb_platform_clear_ep_rxintr(struct musb *musb, int epnum)
{
 if (musb->ops->clear_ep_rxintr)
  musb->ops->clear_ep_rxintr(musb, epnum);
}
