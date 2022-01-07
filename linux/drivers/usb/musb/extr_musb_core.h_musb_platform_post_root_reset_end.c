
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* post_root_reset_end ) (struct musb*) ;} ;


 int stub1 (struct musb*) ;

__attribute__((used)) static inline void musb_platform_post_root_reset_end(struct musb *musb)
{
 if (musb->ops->post_root_reset_end)
  musb->ops->post_root_reset_end(musb);
}
