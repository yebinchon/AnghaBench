
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wl1251 {int scanning; int mutex; TYPE_2__* vif; int hw; int dtim_period; int beacon_int; int channel; int bss_type; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_scan_request {int n_channels; int channels; scalar_t__ ie_len; int ie; TYPE_1__* ssids; scalar_t__ n_ssids; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct TYPE_6__ {int flags; } ;
struct ieee80211_hw {TYPE_3__ conf; struct wl1251* priv; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_4__ {size_t ssid_len; int * ssid; } ;


 int CMD_PROBE_REQ ;
 int DEBUG_MAC80211 ;
 int DEBUG_SCAN ;
 int EINVAL ;
 int ENOMEM ;
 int IEEE80211_CONF_IDLE ;
 int STATION_ACTIVE_MODE ;
 int STATION_IDLE ;
 int WL1251_SCAN_NUM_PROBES ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_probereq_get (int ,int ,int *,size_t,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_put_data (struct sk_buff*,int ,scalar_t__) ;
 int wl1251_cmd_scan (struct wl1251*,int *,size_t,int ,int ,int ) ;
 int wl1251_cmd_template_set (struct wl1251*,int ,int ,int ) ;
 int wl1251_cmd_trigger_scan_to (struct wl1251*,int ) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_join (struct wl1251*,int ,int ,int ,int ) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;
 int wl1251_ps_set_mode (struct wl1251*,int ) ;

__attribute__((used)) static int wl1251_op_hw_scan(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_scan_request *hw_req)
{
 struct cfg80211_scan_request *req = &hw_req->req;
 struct wl1251 *wl = hw->priv;
 struct sk_buff *skb;
 size_t ssid_len = 0;
 u8 *ssid = ((void*)0);
 int ret;

 wl1251_debug(DEBUG_MAC80211, "mac80211 hw scan");

 if (req->n_ssids) {
  ssid = req->ssids[0].ssid;
  ssid_len = req->ssids[0].ssid_len;
 }

 mutex_lock(&wl->mutex);

 if (wl->scanning) {
  wl1251_debug(DEBUG_SCAN, "scan already in progress");
  ret = -EINVAL;
  goto out;
 }

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 if (hw->conf.flags & IEEE80211_CONF_IDLE) {
  ret = wl1251_ps_set_mode(wl, STATION_ACTIVE_MODE);
  if (ret < 0)
   goto out_sleep;
  ret = wl1251_join(wl, wl->bss_type, wl->channel,
      wl->beacon_int, wl->dtim_period);
  if (ret < 0)
   goto out_sleep;
 }

 skb = ieee80211_probereq_get(wl->hw, wl->vif->addr, ssid, ssid_len,
         req->ie_len);
 if (!skb) {
  ret = -ENOMEM;
  goto out_idle;
 }
 if (req->ie_len)
  skb_put_data(skb, req->ie, req->ie_len);

 ret = wl1251_cmd_template_set(wl, CMD_PROBE_REQ, skb->data,
          skb->len);
 dev_kfree_skb(skb);
 if (ret < 0)
  goto out_idle;

 ret = wl1251_cmd_trigger_scan_to(wl, 0);
 if (ret < 0)
  goto out_idle;

 wl->scanning = 1;

 ret = wl1251_cmd_scan(wl, ssid, ssid_len, req->channels,
         req->n_channels, WL1251_SCAN_NUM_PROBES);
 if (ret < 0) {
  wl1251_debug(DEBUG_SCAN, "scan failed %d", ret);
  wl->scanning = 0;
  goto out_idle;
 }
 goto out_sleep;

out_idle:
 if (hw->conf.flags & IEEE80211_CONF_IDLE)
  ret = wl1251_ps_set_mode(wl, STATION_IDLE);
out_sleep:
 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
