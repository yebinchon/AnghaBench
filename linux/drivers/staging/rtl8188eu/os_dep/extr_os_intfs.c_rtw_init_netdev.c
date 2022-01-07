
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; } ;
struct net_device {int watchdog_timeo; struct iw_handler_def* wireless_handlers; int * netdev_ops; TYPE_1__ dev; } ;
struct iw_handler_def {int dummy; } ;
struct adapter {struct net_device* pnetdev; } ;


 int DBG_88E (char*) ;
 int HZ ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int loadparam (struct adapter*,struct net_device*) ;
 struct net_device* rtw_alloc_etherdev_with_old_priv (void*) ;
 int rtw_handlers_def ;
 int rtw_netdev_ops ;
 struct adapter* rtw_netdev_priv (struct net_device*) ;
 int wlan_type ;

struct net_device *rtw_init_netdev(struct adapter *old_padapter)
{
 struct adapter *padapter;
 struct net_device *pnetdev = ((void*)0);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+init_net_dev\n"));

 if (old_padapter)
  pnetdev = rtw_alloc_etherdev_with_old_priv((void *)old_padapter);

 if (!pnetdev)
  return ((void*)0);

 pnetdev->dev.type = &wlan_type;
 padapter = rtw_netdev_priv(pnetdev);
 padapter->pnetdev = pnetdev;
 DBG_88E("register rtw_netdev_ops to netdev_ops\n");
 pnetdev->netdev_ops = &rtw_netdev_ops;
 pnetdev->watchdog_timeo = HZ * 3;
 pnetdev->wireless_handlers = (struct iw_handler_def *)&rtw_handlers_def;

 loadparam(padapter, pnetdev);

 return pnetdev;
}
