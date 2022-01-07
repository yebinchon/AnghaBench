
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtw_ndev_notifier ;
 int unregister_netdevice_notifier (int *) ;

void rtw_ndev_notifier_unregister(void)
{
 unregister_netdevice_notifier(&rtw_ndev_notifier);
}
