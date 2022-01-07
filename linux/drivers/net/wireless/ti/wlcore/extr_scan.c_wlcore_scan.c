
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; size_t ssid_len; int failed; int scanned_ch; struct cfg80211_scan_request* req; int ssid; } ;
struct wl1271 {TYPE_2__* ops; int scan_complete_work; int hw; TYPE_1__ scan; struct wl12xx_vif* scan_wlvif; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; } ;
struct TYPE_4__ {int (* scan_start ) (struct wl1271*,struct wl12xx_vif*,struct cfg80211_scan_request*) ;} ;


 int BUG_ON (int) ;
 int EBUSY ;
 scalar_t__ WL1271_MAX_CHANNELS ;
 scalar_t__ WL1271_SCAN_STATE_2GHZ_ACTIVE ;
 scalar_t__ WL1271_SCAN_STATE_IDLE ;
 int WL1271_SCAN_TIMEOUT ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int memcpy (int ,int const*,size_t) ;
 int memset (int ,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int stub1 (struct wl1271*,struct wl12xx_vif*,struct cfg80211_scan_request*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

int wlcore_scan(struct wl1271 *wl, struct ieee80211_vif *vif,
  const u8 *ssid, size_t ssid_len,
  struct cfg80211_scan_request *req)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);





 BUG_ON(req->n_channels > WL1271_MAX_CHANNELS);

 if (wl->scan.state != WL1271_SCAN_STATE_IDLE)
  return -EBUSY;

 wl->scan.state = WL1271_SCAN_STATE_2GHZ_ACTIVE;

 if (ssid_len && ssid) {
  wl->scan.ssid_len = ssid_len;
  memcpy(wl->scan.ssid, ssid, ssid_len);
 } else {
  wl->scan.ssid_len = 0;
 }

 wl->scan_wlvif = wlvif;
 wl->scan.req = req;
 memset(wl->scan.scanned_ch, 0, sizeof(wl->scan.scanned_ch));


 wl->scan.failed = 1;
 ieee80211_queue_delayed_work(wl->hw, &wl->scan_complete_work,
         msecs_to_jiffies(WL1271_SCAN_TIMEOUT));

 wl->ops->scan_start(wl, wlvif, req);

 return 0;
}
