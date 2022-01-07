
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct eth_dev {int qmult; } ;


 struct eth_dev* netdev_priv (struct net_device*) ;

unsigned gether_get_qmult(struct net_device *net)
{
 struct eth_dev *dev;

 dev = netdev_priv(net);
 return dev->qmult;
}
