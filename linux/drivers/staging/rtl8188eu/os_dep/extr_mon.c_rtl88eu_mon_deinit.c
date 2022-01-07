
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int unregister_netdev (struct net_device*) ;

void rtl88eu_mon_deinit(struct net_device *dev)
{
 if (!dev)
  return;

 unregister_netdev(dev);
}
