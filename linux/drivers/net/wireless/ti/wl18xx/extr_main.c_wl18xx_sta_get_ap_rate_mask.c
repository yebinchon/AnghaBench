
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {scalar_t__ channel_type; int rate_set; } ;
struct wl1271 {int dummy; } ;


 int CONF_TX_MIMO_RATES ;
 int CONF_TX_RATE_USE_WIDE_CHAN ;
 int DEBUG_ACX ;
 scalar_t__ NL80211_CHAN_HT40MINUS ;
 scalar_t__ NL80211_CHAN_HT40PLUS ;
 int wl1271_debug (int ,char*) ;
 scalar_t__ wl18xx_is_mimo_supported (struct wl1271*) ;

__attribute__((used)) static u32 wl18xx_sta_get_ap_rate_mask(struct wl1271 *wl,
           struct wl12xx_vif *wlvif)
{
 u32 hw_rate_set = wlvif->rate_set;

 if (wlvif->channel_type == NL80211_CHAN_HT40MINUS ||
     wlvif->channel_type == NL80211_CHAN_HT40PLUS) {
  wl1271_debug(DEBUG_ACX, "using wide channel rate mask");
  hw_rate_set |= CONF_TX_RATE_USE_WIDE_CHAN;


  hw_rate_set &= ~CONF_TX_MIMO_RATES;
 } else if (wl18xx_is_mimo_supported(wl)) {
  wl1271_debug(DEBUG_ACX, "using MIMO channel rate mask");
  hw_rate_set |= CONF_TX_MIMO_RATES;
 }

 return hw_rate_set;
}
