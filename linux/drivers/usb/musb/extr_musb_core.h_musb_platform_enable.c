
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable ) (struct musb*) ;} ;


 int stub1 (struct musb*) ;

__attribute__((used)) static inline void musb_platform_enable(struct musb *musb)
{
 if (musb->ops->enable)
  musb->ops->enable(musb);
}
