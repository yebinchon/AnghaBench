
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct wilc_vif {struct net_device_stats netstats; } ;
struct net_device {int dummy; } ;


 struct wilc_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *mac_stats(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);

 return &vif->netstats;
}
