
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; scalar_t__ role_id; int channel; int band; int total_freed_pkts; TYPE_1__ sta; int flags; } ;
struct wl1271_station {int total_freed_pkts; int hlid; } ;
struct wl1271 {int roc_map; } ;
struct ieee80211_sta {int ht_cap; scalar_t__ drv_priv; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_AUTHORIZED ;
 int IEEE80211_STA_NONE ;
 int IEEE80211_STA_NOTEXIST ;
 int WARN_ON (int) ;
 scalar_t__ WL12XX_INVALID_ROLE_ID ;
 scalar_t__ WL12XX_MAX_ROLES ;
 int WLVIF_FLAG_STA_AUTHORIZED ;
 int WLVIF_FLAG_STA_STATE_SENT ;
 int clear_bit (int ,int *) ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (scalar_t__,int ) ;
 int wl1271_acx_set_ht_capabilities (struct wl1271*,int *,int,int ) ;
 int wl12xx_cmd_add_peer (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*,int ) ;
 int wl12xx_cmd_set_peer_state (struct wl1271*,struct wl12xx_vif*,int ) ;
 int wl12xx_croc (struct wl1271*,scalar_t__) ;
 int wl12xx_roc (struct wl1271*,struct wl12xx_vif*,scalar_t__,int ,int ) ;
 int wl12xx_set_authorized (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_sta_add (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*) ;
 int wl12xx_sta_remove (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*) ;
 int wlcore_save_freed_pkts (struct wl1271*,struct wl12xx_vif*,int ,struct ieee80211_sta*) ;
 int wlcore_update_inconn_sta (struct wl1271*,struct wl12xx_vif*,struct wl1271_station*,int) ;

__attribute__((used)) static int wl12xx_update_sta_state(struct wl1271 *wl,
       struct wl12xx_vif *wlvif,
       struct ieee80211_sta *sta,
       enum ieee80211_sta_state old_state,
       enum ieee80211_sta_state new_state)
{
 struct wl1271_station *wl_sta;
 bool is_ap = wlvif->bss_type == BSS_TYPE_AP_BSS;
 bool is_sta = wlvif->bss_type == BSS_TYPE_STA_BSS;
 int ret;

 wl_sta = (struct wl1271_station *)sta->drv_priv;


 if (is_ap &&
     old_state == IEEE80211_STA_NOTEXIST &&
     new_state == IEEE80211_STA_NONE) {
  ret = wl12xx_sta_add(wl, wlvif, sta);
  if (ret)
   return ret;

  wlcore_update_inconn_sta(wl, wlvif, wl_sta, 1);
 }


 if (is_ap &&
     old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_NOTEXIST) {

  wl12xx_sta_remove(wl, wlvif, sta);

  wlcore_update_inconn_sta(wl, wlvif, wl_sta, 0);
 }


 if (is_ap &&
     new_state == IEEE80211_STA_AUTHORIZED) {
  ret = wl12xx_cmd_set_peer_state(wl, wlvif, wl_sta->hlid);
  if (ret < 0)
   return ret;


  ret = wl12xx_cmd_add_peer(wl, wlvif, sta, wl_sta->hlid);
  if (ret < 0)
   return ret;

  ret = wl1271_acx_set_ht_capabilities(wl, &sta->ht_cap, 1,
           wl_sta->hlid);
  if (ret)
   return ret;

  wlcore_update_inconn_sta(wl, wlvif, wl_sta, 0);
 }


 if (is_sta &&
     new_state == IEEE80211_STA_AUTHORIZED) {
  set_bit(WLVIF_FLAG_STA_AUTHORIZED, &wlvif->flags);
  ret = wl12xx_set_authorized(wl, wlvif);
  if (ret)
   return ret;
 }

 if (is_sta &&
     old_state == IEEE80211_STA_AUTHORIZED &&
     new_state == IEEE80211_STA_ASSOC) {
  clear_bit(WLVIF_FLAG_STA_AUTHORIZED, &wlvif->flags);
  clear_bit(WLVIF_FLAG_STA_STATE_SENT, &wlvif->flags);
 }


 if (is_sta &&
     old_state == IEEE80211_STA_ASSOC &&
     new_state == IEEE80211_STA_AUTH) {
  wlcore_save_freed_pkts(wl, wlvif, wlvif->sta.hlid, sta);
  wlvif->total_freed_pkts = 0;
 }


 if (is_sta &&
     old_state == IEEE80211_STA_AUTH &&
     new_state == IEEE80211_STA_ASSOC) {
  wlvif->total_freed_pkts = wl_sta->total_freed_pkts;
 }


 if (is_sta &&
     (new_state == IEEE80211_STA_AUTHORIZED ||
      new_state == IEEE80211_STA_NOTEXIST)) {
  if (test_bit(wlvif->role_id, wl->roc_map))
   wl12xx_croc(wl, wlvif->role_id);
 }

 if (is_sta &&
     old_state == IEEE80211_STA_NOTEXIST &&
     new_state == IEEE80211_STA_NONE) {
  if (find_first_bit(wl->roc_map,
       WL12XX_MAX_ROLES) >= WL12XX_MAX_ROLES) {
   WARN_ON(wlvif->role_id == WL12XX_INVALID_ROLE_ID);
   wl12xx_roc(wl, wlvif, wlvif->role_id,
       wlvif->band, wlvif->channel);
  }
 }
 return 0;
}
