
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int channel; scalar_t__ bss_type; int radar_enabled; int channel_type; int band; int flags; int role_id; } ;
struct wl1271 {int dummy; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {scalar_t__ radar_enabled; TYPE_2__ def; } ;
struct TYPE_3__ {int band; int center_freq; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 int DEBUG_MAC80211 ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WLVIF_FLAG_BEACON_DISABLED ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;
 int ieee80211_frequency_to_channel (int ) ;
 int test_bit (int ,int *) ;
 int wl1271_debug (int ,char*,...) ;
 int wlcore_hw_set_cac (struct wl1271*,struct wl12xx_vif*,int) ;

__attribute__((used)) static int __wlcore_switch_vif_chan(struct wl1271 *wl,
        struct wl12xx_vif *wlvif,
        struct ieee80211_chanctx_conf *new_ctx)
{
 int channel = ieee80211_frequency_to_channel(
  new_ctx->def.chan->center_freq);

 wl1271_debug(DEBUG_MAC80211,
       "switch vif (role %d) %d -> %d chan_type: %d",
       wlvif->role_id, wlvif->channel, channel,
       cfg80211_get_chandef_type(&new_ctx->def));

 if (WARN_ON_ONCE(wlvif->bss_type != BSS_TYPE_AP_BSS))
  return 0;

 WARN_ON(!test_bit(WLVIF_FLAG_BEACON_DISABLED, &wlvif->flags));

 if (wlvif->radar_enabled) {
  wl1271_debug(DEBUG_MAC80211, "Stop radar detection");
  wlcore_hw_set_cac(wl, wlvif, 0);
  wlvif->radar_enabled = 0;
 }

 wlvif->band = new_ctx->def.chan->band;
 wlvif->channel = channel;
 wlvif->channel_type = cfg80211_get_chandef_type(&new_ctx->def);


 if (new_ctx->radar_enabled) {
  wl1271_debug(DEBUG_MAC80211, "Start radar detection");
  wlcore_hw_set_cac(wl, wlvif, 1);
  wlvif->radar_enabled = 1;
 }

 return 0;
}
