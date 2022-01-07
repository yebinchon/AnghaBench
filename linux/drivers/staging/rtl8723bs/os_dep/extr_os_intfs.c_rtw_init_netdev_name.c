
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ dev_alloc_name (struct net_device*,char const*) ;
 int netif_carrier_off (struct net_device*) ;
 int pr_err (char*,char const*) ;

int rtw_init_netdev_name(struct net_device *pnetdev, const char *ifname)
{
 if (dev_alloc_name(pnetdev, ifname) < 0) {
  pr_err("dev_alloc_name, fail for %s\n", ifname);
  return 1;
 }
 netif_carrier_off(pnetdev);


 return 0;
}
