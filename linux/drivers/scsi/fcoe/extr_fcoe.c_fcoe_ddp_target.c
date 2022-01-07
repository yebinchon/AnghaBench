
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct scatterlist {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct fc_lport {int dummy; } ;
struct TYPE_2__ {int (* ndo_fcoe_ddp_target ) (struct net_device*,int ,struct scatterlist*,unsigned int) ;} ;


 struct net_device* fcoe_netdev (struct fc_lport*) ;
 int stub1 (struct net_device*,int ,struct scatterlist*,unsigned int) ;

__attribute__((used)) static int fcoe_ddp_target(struct fc_lport *lport, u16 xid,
      struct scatterlist *sgl, unsigned int sgc)
{
 struct net_device *netdev = fcoe_netdev(lport);

 if (netdev->netdev_ops->ndo_fcoe_ddp_target)
  return netdev->netdev_ops->ndo_fcoe_ddp_target(netdev, xid,
              sgl, sgc);

 return 0;
}
