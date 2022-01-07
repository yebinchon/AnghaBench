
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iftype; int wiphy; } ;
struct qtnf_vif {TYPE_1__ wdev; int netdev; } ;


 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;
 int cfg80211_shutdown_all_interfaces (int ) ;

void qtnf_cfg80211_vif_reset(struct qtnf_vif *vif)
{
 if (vif->wdev.iftype == NL80211_IFTYPE_STATION)
  cfg80211_disconnected(vif->netdev, WLAN_REASON_DEAUTH_LEAVING,
          ((void*)0), 0, 1, GFP_KERNEL);

 cfg80211_shutdown_all_interfaces(vif->wdev.wiphy);
}
