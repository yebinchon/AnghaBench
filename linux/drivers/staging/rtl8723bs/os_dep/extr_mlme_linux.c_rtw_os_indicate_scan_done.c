
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int indicate_wx_scan_complete_event (struct adapter*) ;
 int rtw_cfg80211_indicate_scan_done (struct adapter*,int) ;

void rtw_os_indicate_scan_done(struct adapter *padapter, bool aborted)
{
 rtw_cfg80211_indicate_scan_done(padapter, aborted);
 indicate_wx_scan_complete_event(padapter);
}
