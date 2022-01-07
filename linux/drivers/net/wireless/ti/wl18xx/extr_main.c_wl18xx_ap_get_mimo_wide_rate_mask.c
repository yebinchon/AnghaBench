
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {scalar_t__ channel_type; scalar_t__ band; } ;
struct wl1271 {int dummy; } ;


 int CONF_TX_MIMO_RATES ;
 int CONF_TX_RATE_USE_WIDE_CHAN ;
 int DEBUG_ACX ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ NL80211_CHAN_HT40MINUS ;
 scalar_t__ NL80211_CHAN_HT40PLUS ;
 scalar_t__ WARN_ON (int) ;
 int wl1271_debug (int ,char*) ;
 scalar_t__ wl18xx_is_mimo_supported (struct wl1271*) ;

__attribute__((used)) static u32 wl18xx_ap_get_mimo_wide_rate_mask(struct wl1271 *wl,
          struct wl12xx_vif *wlvif)
{
 if (wlvif->channel_type == NL80211_CHAN_HT40MINUS ||
     wlvif->channel_type == NL80211_CHAN_HT40PLUS) {
  wl1271_debug(DEBUG_ACX, "using wide channel rate mask");


  if (WARN_ON(wlvif->band != NL80211_BAND_5GHZ))
   return 0;

  return CONF_TX_RATE_USE_WIDE_CHAN;
 } else if (wl18xx_is_mimo_supported(wl) &&
     wlvif->band == NL80211_BAND_2GHZ) {
  wl1271_debug(DEBUG_ACX, "using MIMO rate mask");




  return CONF_TX_MIMO_RATES;
 } else {
  return 0;
 }
}
