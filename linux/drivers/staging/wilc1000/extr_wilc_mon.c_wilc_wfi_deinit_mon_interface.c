
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int * monitor_dev; } ;


 int unregister_netdev (int *) ;
 int unregister_netdevice (int *) ;

void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked)
{
 if (!wl->monitor_dev)
  return;

 if (rtnl_locked)
  unregister_netdevice(wl->monitor_dev);
 else
  unregister_netdev(wl->monitor_dev);
 wl->monitor_dev = ((void*)0);
}
