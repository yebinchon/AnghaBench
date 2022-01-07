
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {scalar_t__ can_sg; } ;
struct net_device {int mtu; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;
 int ETH_MAX_MTU ;
 int VLAN_ETH_HLEN ;
 struct xenvif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xenvif_change_mtu(struct net_device *dev, int mtu)
{
 struct xenvif *vif = netdev_priv(dev);
 int max = vif->can_sg ? ETH_MAX_MTU - VLAN_ETH_HLEN : ETH_DATA_LEN;

 if (mtu > max)
  return -EINVAL;
 dev->mtu = mtu;
 return 0;
}
