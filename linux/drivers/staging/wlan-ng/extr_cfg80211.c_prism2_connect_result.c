
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct wlandevice {int bssid; int netdev; } ;


 int GFP_KERNEL ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int cfg80211_connect_result (int ,int ,int *,int ,int *,int ,int ,int ) ;

void prism2_connect_result(struct wlandevice *wlandev, u8 failed)
{
 u16 status = failed ?
       WLAN_STATUS_UNSPECIFIED_FAILURE : WLAN_STATUS_SUCCESS;

 cfg80211_connect_result(wlandev->netdev, wlandev->bssid,
    ((void*)0), 0, ((void*)0), 0, status, GFP_KERNEL);
}
