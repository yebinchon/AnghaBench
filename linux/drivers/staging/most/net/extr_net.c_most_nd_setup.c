
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int ether_setup (struct net_device*) ;
 int most_nd_ops ;

__attribute__((used)) static void most_nd_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->netdev_ops = &most_nd_ops;
}
