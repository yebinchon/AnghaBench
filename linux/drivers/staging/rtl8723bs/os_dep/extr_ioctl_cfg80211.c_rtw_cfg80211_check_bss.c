
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int SsidLength; int Ssid; } ;
struct TYPE_8__ {int DSConfig; } ;
struct wlan_bssid_ex {TYPE_4__ Ssid; int MacAddress; TYPE_3__ Configuration; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_6__ {struct wlan_bssid_ex network; } ;
struct TYPE_7__ {TYPE_1__ mlmext_info; } ;
struct adapter {TYPE_5__* rtw_wdev; TYPE_2__ mlmeextpriv; } ;
struct TYPE_10__ {int wiphy; } ;


 int NL80211_BAND_2GHZ ;
 int WLAN_CAPABILITY_ESS ;
 struct cfg80211_bss* cfg80211_get_bss (int ,struct ieee80211_channel*,int ,int ,int ,int ,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int ) ;
 int rtw_ieee80211_channel_to_frequency (int ,int ) ;

int rtw_cfg80211_check_bss(struct adapter *padapter)
{
 struct wlan_bssid_ex *pnetwork = &(padapter->mlmeextpriv.mlmext_info.network);
 struct cfg80211_bss *bss = ((void*)0);
 struct ieee80211_channel *notify_channel = ((void*)0);
 u32 freq;

 if (!(pnetwork) || !(padapter->rtw_wdev))
  return 0;

 freq = rtw_ieee80211_channel_to_frequency(pnetwork->Configuration.DSConfig, NL80211_BAND_2GHZ);

 notify_channel = ieee80211_get_channel(padapter->rtw_wdev->wiphy, freq);
 bss = cfg80211_get_bss(padapter->rtw_wdev->wiphy, notify_channel,
   pnetwork->MacAddress, pnetwork->Ssid.Ssid,
   pnetwork->Ssid.SsidLength,
   WLAN_CAPABILITY_ESS, WLAN_CAPABILITY_ESS);

 cfg80211_put_bss(padapter->rtw_wdev->wiphy, bss);

 return (bss!= ((void*)0));
}
