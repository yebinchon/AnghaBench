
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_port; int ml_priv; } ;


 struct net_device* qeth_alloc_netdev (int ) ;

struct net_device *qeth_clone_netdev(struct net_device *orig)
{
 struct net_device *clone = qeth_alloc_netdev(orig->ml_priv);

 if (!clone)
  return ((void*)0);

 clone->dev_port = orig->dev_port;
 return clone;
}
