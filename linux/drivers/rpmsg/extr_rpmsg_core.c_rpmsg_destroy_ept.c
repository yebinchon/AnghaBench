
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* destroy_ept ) (struct rpmsg_endpoint*) ;} ;


 int stub1 (struct rpmsg_endpoint*) ;

void rpmsg_destroy_ept(struct rpmsg_endpoint *ept)
{
 if (ept)
  ept->ops->destroy_ept(ept);
}
