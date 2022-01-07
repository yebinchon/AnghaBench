
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pnetdev; } ;


 int netif_carrier_on (int ) ;
 int rtw_indicate_wx_assoc_event (struct adapter*) ;

void rtw_os_indicate_connect(struct adapter *adapter)
{
 rtw_indicate_wx_assoc_event(adapter);
 netif_carrier_on(adapter->pnetdev);
}
