
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* trysend ) (struct rpmsg_endpoint*,void*,int) ;} ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (struct rpmsg_endpoint*,void*,int) ;

int rpmsg_trysend(struct rpmsg_endpoint *ept, void *data, int len)
{
 if (WARN_ON(!ept))
  return -EINVAL;
 if (!ept->ops->trysend)
  return -ENXIO;

 return ept->ops->trysend(ept, data, len);
}
