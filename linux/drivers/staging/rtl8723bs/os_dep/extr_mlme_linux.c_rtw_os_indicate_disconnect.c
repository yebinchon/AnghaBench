
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int pnetdev; } ;


 int netif_carrier_off (int ) ;
 int rtw_cfg80211_indicate_disconnect (struct adapter*) ;
 int rtw_indicate_wx_disassoc_event (struct adapter*) ;
 int rtw_reset_securitypriv_cmd (struct adapter*) ;

void rtw_os_indicate_disconnect(struct adapter *adapter)
{


 netif_carrier_off(adapter->pnetdev);

 rtw_cfg80211_indicate_disconnect(adapter);

 rtw_indicate_wx_disassoc_event(adapter);


 rtw_reset_securitypriv_cmd(adapter);
}
