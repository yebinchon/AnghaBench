
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* try_idle ) (struct musb*,unsigned long) ;} ;


 int stub1 (struct musb*,unsigned long) ;

__attribute__((used)) static inline void musb_platform_try_idle(struct musb *musb,
  unsigned long timeout)
{
 if (musb->ops->try_idle)
  musb->ops->try_idle(musb, timeout);
}
