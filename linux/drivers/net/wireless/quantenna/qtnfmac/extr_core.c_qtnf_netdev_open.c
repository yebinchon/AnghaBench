
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_carrier_off (struct net_device*) ;
 int qtnf_netdev_updown (struct net_device*,int) ;

__attribute__((used)) static int qtnf_netdev_open(struct net_device *ndev)
{
 netif_carrier_off(ndev);
 qtnf_netdev_updown(ndev, 1);
 return 0;
}
