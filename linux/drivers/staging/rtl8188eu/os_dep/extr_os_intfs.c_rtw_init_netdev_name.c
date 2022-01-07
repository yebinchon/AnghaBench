
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_os_intfs_c_ ;
 scalar_t__ dev_alloc_name (struct net_device*,char const*) ;
 int netif_carrier_off (struct net_device*) ;

int rtw_init_netdev_name(struct net_device *pnetdev, const char *ifname)
{
 if (dev_alloc_name(pnetdev, ifname) < 0)
  RT_TRACE(_module_os_intfs_c_, _drv_err_, ("dev_alloc_name, fail!\n"));

 netif_carrier_off(pnetdev);
 return 0;
}
