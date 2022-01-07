
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct nic {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;


 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *gdm_lte_stats(struct net_device *dev)
{
 struct nic *nic = netdev_priv(dev);

 return &nic->stats;
}
