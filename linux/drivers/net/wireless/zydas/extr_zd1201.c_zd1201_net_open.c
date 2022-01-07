
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int essidlen; int essid; int mac_enabled; } ;
struct net_device {int dummy; } ;


 struct zd1201* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int zd1201_join (struct zd1201*,int ,int ) ;

__attribute__((used)) static int zd1201_net_open(struct net_device *dev)
{
 struct zd1201 *zd = netdev_priv(dev);


 if (!zd->mac_enabled)
  zd1201_join(zd, zd->essid, zd->essidlen);
 netif_start_queue(dev);

 return 0;
}
