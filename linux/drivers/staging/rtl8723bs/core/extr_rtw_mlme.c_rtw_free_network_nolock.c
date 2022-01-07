
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_network {int dummy; } ;
struct adapter {int mlmepriv; } ;


 int _rtw_free_network_nolock (int *,struct wlan_network*) ;
 int rtw_cfg80211_unlink_bss (struct adapter*,struct wlan_network*) ;

void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork)
{

 _rtw_free_network_nolock(&(padapter->mlmepriv), pnetwork);
 rtw_cfg80211_unlink_bss(padapter, pnetwork);
}
