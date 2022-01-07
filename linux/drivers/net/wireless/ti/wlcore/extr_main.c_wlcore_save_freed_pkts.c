
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct wl12xx_vif {scalar_t__ encryption_type; } ;
struct wl1271_station {int total_freed_pkts; } ;
struct wl1271 {int flags; TYPE_1__* links; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_2__ {int total_freed_pkts; } ;


 scalar_t__ KEY_GEM ;
 int WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 scalar_t__ WL1271_TX_SQN_POST_RECOVERY_PADDING ;
 scalar_t__ WL1271_TX_SQN_POST_RECOVERY_PADDING_GEM ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void wlcore_save_freed_pkts(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       u8 hlid, struct ieee80211_sta *sta)
{
 struct wl1271_station *wl_sta;
 u32 sqn_recovery_padding = WL1271_TX_SQN_POST_RECOVERY_PADDING;

 wl_sta = (void *)sta->drv_priv;
 wl_sta->total_freed_pkts = wl->links[hlid].total_freed_pkts;





 if (wlvif->encryption_type == KEY_GEM)
  sqn_recovery_padding = WL1271_TX_SQN_POST_RECOVERY_PADDING_GEM;

 if (test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags))
  wl_sta->total_freed_pkts += sqn_recovery_padding;
}
