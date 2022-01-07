
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_bssid_ex {int dummy; } ;
struct adapter {int dummy; } ;


 int rtw_update_scanned_network (struct adapter*,struct wlan_bssid_ex*) ;
 int update_current_network (struct adapter*,struct wlan_bssid_ex*) ;

__attribute__((used)) static void rtw_add_network(struct adapter *adapter,
       struct wlan_bssid_ex *pnetwork)
{
 update_current_network(adapter, pnetwork);
 rtw_update_scanned_network(adapter, pnetwork);
}
