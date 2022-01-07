
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* exit ) (struct musb*) ;} ;


 int EINVAL ;
 int stub1 (struct musb*) ;

__attribute__((used)) static inline int musb_platform_exit(struct musb *musb)
{
 if (!musb->ops->exit)
  return -EINVAL;

 return musb->ops->exit(musb);
}
