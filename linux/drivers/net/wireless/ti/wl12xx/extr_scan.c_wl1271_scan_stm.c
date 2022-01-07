
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wl12xx_vif {int * bitrate_masks; } ;
struct TYPE_4__ {int state; int failed; TYPE_1__* req; } ;
struct wl1271 {int scan_complete_work; int hw; TYPE_2__ scan; int enable_11a; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_3__ {int no_cck; } ;


 int CONF_TX_CCK_RATES ;
 int CONF_TX_RATE_MASK_BASIC_P2P ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int WL1271_NOTHING_TO_SCAN ;






 int cancel_delayed_work (int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int wl1271_error (char*) ;
 int wl1271_scan_send (struct wl1271*,struct wl12xx_vif*,int,int,int ) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;

void wl1271_scan_stm(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret = 0;
 enum nl80211_band band;
 u32 rate, mask;

 switch (wl->scan.state) {
 case 128:
  break;

 case 133:
  band = NL80211_BAND_2GHZ;
  mask = wlvif->bitrate_masks[band];
  if (wl->scan.req->no_cck) {
   mask &= ~CONF_TX_CCK_RATES;
   if (!mask)
    mask = CONF_TX_RATE_MASK_BASIC_P2P;
  }
  rate = wl1271_tx_min_rate_get(wl, mask);
  ret = wl1271_scan_send(wl, wlvif, band, 0, rate);
  if (ret == WL1271_NOTHING_TO_SCAN) {
   wl->scan.state = 132;
   wl1271_scan_stm(wl, wlvif);
  }

  break;

 case 132:
  band = NL80211_BAND_2GHZ;
  mask = wlvif->bitrate_masks[band];
  if (wl->scan.req->no_cck) {
   mask &= ~CONF_TX_CCK_RATES;
   if (!mask)
    mask = CONF_TX_RATE_MASK_BASIC_P2P;
  }
  rate = wl1271_tx_min_rate_get(wl, mask);
  ret = wl1271_scan_send(wl, wlvif, band, 1, rate);
  if (ret == WL1271_NOTHING_TO_SCAN) {
   if (wl->enable_11a)
    wl->scan.state = 131;
   else
    wl->scan.state = 129;
   wl1271_scan_stm(wl, wlvif);
  }

  break;

 case 131:
  band = NL80211_BAND_5GHZ;
  rate = wl1271_tx_min_rate_get(wl, wlvif->bitrate_masks[band]);
  ret = wl1271_scan_send(wl, wlvif, band, 0, rate);
  if (ret == WL1271_NOTHING_TO_SCAN) {
   wl->scan.state = 130;
   wl1271_scan_stm(wl, wlvif);
  }

  break;

 case 130:
  band = NL80211_BAND_5GHZ;
  rate = wl1271_tx_min_rate_get(wl, wlvif->bitrate_masks[band]);
  ret = wl1271_scan_send(wl, wlvif, band, 1, rate);
  if (ret == WL1271_NOTHING_TO_SCAN) {
   wl->scan.state = 129;
   wl1271_scan_stm(wl, wlvif);
  }

  break;

 case 129:
  wl->scan.failed = 0;
  cancel_delayed_work(&wl->scan_complete_work);
  ieee80211_queue_delayed_work(wl->hw, &wl->scan_complete_work,
          msecs_to_jiffies(0));
  break;

 default:
  wl1271_error("invalid scan state");
  break;
 }

 if (ret < 0) {
  cancel_delayed_work(&wl->scan_complete_work);
  ieee80211_queue_delayed_work(wl->hw, &wl->scan_complete_work,
          msecs_to_jiffies(0));
 }
}
