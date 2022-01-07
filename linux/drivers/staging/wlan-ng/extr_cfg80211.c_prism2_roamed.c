
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int netdev; int bssid; } ;
struct cfg80211_roam_info {int bssid; } ;


 int GFP_KERNEL ;
 int cfg80211_roamed (int ,struct cfg80211_roam_info*,int ) ;

void prism2_roamed(struct wlandevice *wlandev)
{
 struct cfg80211_roam_info roam_info = {
  .bssid = wlandev->bssid,
 };

 cfg80211_roamed(wlandev->netdev, &roam_info, GFP_KERNEL);
}
