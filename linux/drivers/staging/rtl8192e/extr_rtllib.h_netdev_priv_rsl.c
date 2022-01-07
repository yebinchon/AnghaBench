
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 void* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void *netdev_priv_rsl(struct net_device *dev)
{
 return netdev_priv(dev);
}
