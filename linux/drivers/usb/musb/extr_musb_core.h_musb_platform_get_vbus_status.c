
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* vbus_status ) (struct musb*) ;} ;


 int EINVAL ;
 int stub1 (struct musb*) ;

__attribute__((used)) static inline int musb_platform_get_vbus_status(struct musb *musb)
{
 if (!musb->ops->vbus_status)
  return -EINVAL;

 return musb->ops->vbus_status(musb);
}
