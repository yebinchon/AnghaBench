
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpmsg_endpoint {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sendto ) (struct rpmsg_endpoint*,void*,int,int ) ;} ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (struct rpmsg_endpoint*,void*,int,int ) ;

int rpmsg_sendto(struct rpmsg_endpoint *ept, void *data, int len, u32 dst)
{
 if (WARN_ON(!ept))
  return -EINVAL;
 if (!ept->ops->sendto)
  return -ENXIO;

 return ept->ops->sendto(ept, data, len, dst);
}
