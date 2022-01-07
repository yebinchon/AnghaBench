
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlan_network {int join_res; } ;
struct adapter {int dummy; } ;


 int mlmeext_joinbss_event_callback (struct adapter*,int ) ;
 int rtw_os_xmit_schedule (struct adapter*) ;

void rtw_joinbss_event_callback(struct adapter *adapter, u8 *pbuf)
{
 struct wlan_network *pnetwork = (struct wlan_network *)pbuf;

 mlmeext_joinbss_event_callback(adapter, pnetwork->join_res);

 rtw_os_xmit_schedule(adapter);
}
