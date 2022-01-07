
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct octeon_ethernet {int queue; scalar_t__ of_node; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int features; TYPE_1__* netdev_ops; int mtu; int * ethtool_ops; int name; int dev_addr; } ;
struct TYPE_2__ {int (* ndo_stop ) (struct net_device*) ;int (* ndo_get_stats ) (struct net_device*) ;} ;


 int IS_ERR_OR_NULL (int const*) ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_SG ;
 scalar_t__ always_use_pow ;
 int cvm_oct_ethtool_ops ;
 int cvm_oct_set_mac_filter (struct net_device*) ;
 int dev_set_mtu (struct net_device*,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,int const*) ;
 int memset (int ,int ,int) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int * of_get_mac_address (scalar_t__) ;
 int pow_send_group ;
 int pow_send_list ;
 scalar_t__ strstr (int ,int ) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

int cvm_oct_common_init(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 const u8 *mac = ((void*)0);

 if (priv->of_node)
  mac = of_get_mac_address(priv->of_node);

 if (!IS_ERR_OR_NULL(mac))
  ether_addr_copy(dev->dev_addr, mac);
 else
  eth_hw_addr_random(dev);





 if ((pow_send_group != -1) &&
     (always_use_pow || strstr(pow_send_list, dev->name)))
  priv->queue = -1;

 if (priv->queue != -1)
  dev->features |= NETIF_F_SG | NETIF_F_IP_CSUM;


 dev->features |= NETIF_F_LLTX;
 dev->ethtool_ops = &cvm_oct_ethtool_ops;

 cvm_oct_set_mac_filter(dev);
 dev_set_mtu(dev, dev->mtu);





 memset(dev->netdev_ops->ndo_get_stats(dev), 0,
        sizeof(struct net_device_stats));

 if (dev->netdev_ops->ndo_stop)
  dev->netdev_ops->ndo_stop(dev);

 return 0;
}
