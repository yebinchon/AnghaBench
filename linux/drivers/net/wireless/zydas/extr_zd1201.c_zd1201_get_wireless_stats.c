
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_statistics {int dummy; } ;
struct zd1201 {struct iw_statistics iwstats; } ;
struct net_device {int dummy; } ;


 struct zd1201* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct iw_statistics *zd1201_get_wireless_stats(struct net_device *dev)
{
 struct zd1201 *zd = netdev_priv(dev);

 return &zd->iwstats;
}
