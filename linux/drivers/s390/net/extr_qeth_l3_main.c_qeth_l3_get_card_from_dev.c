
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct net_device {scalar_t__ ml_priv; int * netdev_ops; } ;


 scalar_t__ is_vlan_dev (struct net_device*) ;
 int qeth_l3_netdev_ops ;
 int qeth_l3_osa_netdev_ops ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static struct qeth_card *qeth_l3_get_card_from_dev(struct net_device *dev)
{
 if (is_vlan_dev(dev))
  dev = vlan_dev_real_dev(dev);
 if (dev->netdev_ops == &qeth_l3_osa_netdev_ops ||
     dev->netdev_ops == &qeth_l3_netdev_ops)
  return (struct qeth_card *) dev->ml_priv;
 return ((void*)0);
}
