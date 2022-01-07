
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dvobj_priv {struct adapter* padapters; } ;
struct adapter {scalar_t__ DriverState; int rtw_wdev; struct net_device* pnetdev; } ;


 scalar_t__ DRIVER_DISAPPEAR ;
 int rtw_wdev_unregister (int ) ;
 int unregister_netdev (struct net_device*) ;

void rtw_unregister_netdevs(struct dvobj_priv *dvobj)
{
 struct adapter *padapter = ((void*)0);
 struct net_device *pnetdev = ((void*)0);

 padapter = dvobj->padapters;

 if (padapter == ((void*)0))
  return;

 pnetdev = padapter->pnetdev;

 if ((padapter->DriverState != DRIVER_DISAPPEAR) && pnetdev)
  unregister_netdev(pnetdev);
 rtw_wdev_unregister(padapter->rtw_wdev);
}
