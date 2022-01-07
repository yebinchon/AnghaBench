
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_netdevice_notifier (int *) ;
 int rtw_ndev_notifier ;

int rtw_ndev_notifier_register(void)
{
 return register_netdevice_notifier(&rtw_ndev_notifier);
}
