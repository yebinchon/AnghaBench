
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_mode ) (struct musb*,int ) ;} ;


 int stub1 (struct musb*,int ) ;

__attribute__((used)) static inline int musb_platform_set_mode(struct musb *musb, u8 mode)
{
 if (!musb->ops->set_mode)
  return 0;

 return musb->ops->set_mode(musb, mode);
}
