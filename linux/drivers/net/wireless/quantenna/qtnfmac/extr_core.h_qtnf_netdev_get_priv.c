
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void qtnf_vif ;
struct net_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct qtnf_vif *qtnf_netdev_get_priv(struct net_device *dev)
{
 return *((void **)netdev_priv(dev));
}
