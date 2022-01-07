
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ role_chan_type; int hlid; } ;
struct wl12xx_vif {scalar_t__ rc_update_bw; scalar_t__ bss_type; TYPE_1__ sta; int flags; } ;
struct wl1271 {int dummy; } ;


 scalar_t__ BSS_TYPE_STA_BSS ;
 int DEBUG_MAC80211 ;
 scalar_t__ IEEE80211_STA_RX_BW_40 ;
 scalar_t__ NL80211_CHAN_HT40MINUS ;
 scalar_t__ NL80211_CHAN_HT40PLUS ;
 scalar_t__ WARN_ON (int) ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 int ieee80211_connection_loss (int ) ;
 int test_bit (int ,int *) ;
 int wl1271_debug (int ,char*,int) ;
 int wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;
 int wl18xx_acx_peer_ht_operation_mode (struct wl1271*,int ,int) ;

__attribute__((used)) static void wl18xx_sta_rc_update(struct wl1271 *wl,
     struct wl12xx_vif *wlvif)
{
 bool wide = wlvif->rc_update_bw >= IEEE80211_STA_RX_BW_40;

 wl1271_debug(DEBUG_MAC80211, "mac80211 sta_rc_update wide %d", wide);


 if (WARN_ON(wlvif->bss_type != BSS_TYPE_STA_BSS))
  return;


 if (!test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
  return;





 if (wlvif->sta.role_chan_type == NL80211_CHAN_HT40MINUS ||
     wlvif->sta.role_chan_type == NL80211_CHAN_HT40PLUS)
  wl18xx_acx_peer_ht_operation_mode(wl, wlvif->sta.hlid, wide);
 else
  ieee80211_connection_loss(wl12xx_wlvif_to_vif(wlvif));
}
