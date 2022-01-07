
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpmsg_endpoint {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* trysend_offchannel ) (struct rpmsg_endpoint*,int ,int ,void*,int) ;} ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (struct rpmsg_endpoint*,int ,int ,void*,int) ;

int rpmsg_trysend_offchannel(struct rpmsg_endpoint *ept, u32 src, u32 dst,
        void *data, int len)
{
 if (WARN_ON(!ept))
  return -EINVAL;
 if (!ept->ops->trysend_offchannel)
  return -ENXIO;

 return ept->ops->trysend_offchannel(ept, src, dst, data, len);
}
