
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct eth_dev {unsigned int qmult; } ;


 struct eth_dev* netdev_priv (struct net_device*) ;

void gether_set_qmult(struct net_device *net, unsigned qmult)
{
 struct eth_dev *dev;

 dev = netdev_priv(net);
 dev->qmult = qmult;
}
