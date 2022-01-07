
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int pending_auth_complete_work; int pending_auth_reply_time; } ;
struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {int hw; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;


 int WLCORE_PEND_AUTH_ROC_TIMEOUT ;
 int cancel_delayed_work (int *) ;
 int ieee80211_is_auth (int ) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int jiffies ;
 int msecs_to_jiffies (int ) ;
 int wl1271_acx_set_inconnection_sta (struct wl1271*,struct wl12xx_vif*,int ) ;
 int wlcore_update_inconn_sta (struct wl1271*,struct wl12xx_vif*,int *,int) ;

__attribute__((used)) static void wl1271_tx_ap_update_inconnection_sta(struct wl1271 *wl,
       struct wl12xx_vif *wlvif,
       struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr;

 hdr = (struct ieee80211_hdr *)(skb->data +
           sizeof(struct wl1271_tx_hw_descr));
 if (!ieee80211_is_auth(hdr->frame_control))
  return;






 wl1271_acx_set_inconnection_sta(wl, wlvif, hdr->addr1);






 wlcore_update_inconn_sta(wl, wlvif, ((void*)0), 1);
 wlvif->pending_auth_reply_time = jiffies;
 cancel_delayed_work(&wlvif->pending_auth_complete_work);
 ieee80211_queue_delayed_work(wl->hw,
    &wlvif->pending_auth_complete_work,
    msecs_to_jiffies(WLCORE_PEND_AUTH_ROC_TIMEOUT));
}
