
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {void* priv; } ;
struct net_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void *rtllib_priv(struct net_device *dev)
{
 return ((struct rtllib_device *)netdev_priv(dev))->priv;
}
