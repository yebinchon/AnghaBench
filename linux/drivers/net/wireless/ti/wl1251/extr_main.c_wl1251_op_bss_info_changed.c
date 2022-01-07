
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {scalar_t__ bss_type; int mutex; int dtim_period; int beacon_int; int channel; int vif; int hw; int bssid; int rssi_thold; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1251* priv; } ;
struct ieee80211_bss_conf {int arp_addr_cnt; scalar_t__ assoc; int * arp_addr_list; scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; scalar_t__ use_short_slot; int aid; int beacon_int; int bssid; int cqm_rssi_thold; } ;
typedef int __be32 ;


 int ACX_PREAMBLE_LONG ;
 int ACX_PREAMBLE_SHORT ;
 int BSS_CHANGED_ARP_FILTER ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_CQM ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int CMD_BEACON ;
 int CMD_PROBE_RESP ;
 int CMD_PS_POLL ;
 int CTSPROTECT_DISABLE ;
 int CTSPROTECT_ENABLE ;
 int DEBUG_MAC80211 ;
 int ETH_ALEN ;
 int SLOT_TIME_LONG ;
 int SLOT_TIME_SHORT ;
 int WARN_ON (int) ;
 int WL1251_ACX_LOW_RSSI_TYPE_EDGE ;
 int WL1251_DEFAULT_BEACON_INT ;
 int WL1251_DEFAULT_DTIM_PERIOD ;
 int WL1251_DEFAULT_LOW_RSSI_DEPTH ;
 int WL1251_DEFAULT_LOW_RSSI_WEIGHT ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct sk_buff* ieee80211_pspoll_get (int ,int ) ;
 int is_zero_ether_addr (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_acx_aid (struct wl1251*,int ) ;
 int wl1251_acx_arp_ip_filter (struct wl1251*,int,int ) ;
 int wl1251_acx_cts_protect (struct wl1251*,int ) ;
 int wl1251_acx_low_rssi (struct wl1251*,int ,int ,int ,int ) ;
 int wl1251_acx_set_preamble (struct wl1251*,int ) ;
 int wl1251_acx_slot (struct wl1251*,int ) ;
 int wl1251_build_null_data (struct wl1251*) ;
 int wl1251_build_qos_null_data (struct wl1251*) ;
 int wl1251_cmd_template_set (struct wl1251*,int ,int ,int ) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_join (struct wl1251*,scalar_t__,int ,int ,int ) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;
 int wl1251_warning (char*,int) ;

__attribute__((used)) static void wl1251_op_bss_info_changed(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_bss_conf *bss_conf,
           u32 changed)
{
 struct wl1251 *wl = hw->priv;
 struct sk_buff *beacon, *skb;
 bool enable;
 int ret;

 wl1251_debug(DEBUG_MAC80211, "mac80211 bss info changed");

 mutex_lock(&wl->mutex);

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 if (changed & BSS_CHANGED_CQM) {
  ret = wl1251_acx_low_rssi(wl, bss_conf->cqm_rssi_thold,
       WL1251_DEFAULT_LOW_RSSI_WEIGHT,
       WL1251_DEFAULT_LOW_RSSI_DEPTH,
       WL1251_ACX_LOW_RSSI_TYPE_EDGE);
  if (ret < 0)
   goto out;
  wl->rssi_thold = bss_conf->cqm_rssi_thold;
 }

 if ((changed & BSS_CHANGED_BSSID) &&
     memcmp(wl->bssid, bss_conf->bssid, ETH_ALEN)) {
  memcpy(wl->bssid, bss_conf->bssid, ETH_ALEN);

  if (!is_zero_ether_addr(wl->bssid)) {
   ret = wl1251_build_null_data(wl);
   if (ret < 0)
    goto out_sleep;

   ret = wl1251_build_qos_null_data(wl);
   if (ret < 0)
    goto out_sleep;

   ret = wl1251_join(wl, wl->bss_type, wl->channel,
       wl->beacon_int, wl->dtim_period);
   if (ret < 0)
    goto out_sleep;
  }
 }

 if (changed & BSS_CHANGED_ASSOC) {
  if (bss_conf->assoc) {
   wl->beacon_int = bss_conf->beacon_int;

   skb = ieee80211_pspoll_get(wl->hw, wl->vif);
   if (!skb)
    goto out_sleep;

   ret = wl1251_cmd_template_set(wl, CMD_PS_POLL,
            skb->data,
            skb->len);
   dev_kfree_skb(skb);
   if (ret < 0)
    goto out_sleep;

   ret = wl1251_acx_aid(wl, bss_conf->aid);
   if (ret < 0)
    goto out_sleep;
  } else {

   wl->beacon_int = WL1251_DEFAULT_BEACON_INT;
   wl->dtim_period = WL1251_DEFAULT_DTIM_PERIOD;
  }
 }
 if (changed & BSS_CHANGED_ERP_SLOT) {
  if (bss_conf->use_short_slot)
   ret = wl1251_acx_slot(wl, SLOT_TIME_SHORT);
  else
   ret = wl1251_acx_slot(wl, SLOT_TIME_LONG);
  if (ret < 0) {
   wl1251_warning("Set slot time failed %d", ret);
   goto out_sleep;
  }
 }

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  if (bss_conf->use_short_preamble)
   wl1251_acx_set_preamble(wl, ACX_PREAMBLE_SHORT);
  else
   wl1251_acx_set_preamble(wl, ACX_PREAMBLE_LONG);
 }

 if (changed & BSS_CHANGED_ERP_CTS_PROT) {
  if (bss_conf->use_cts_prot)
   ret = wl1251_acx_cts_protect(wl, CTSPROTECT_ENABLE);
  else
   ret = wl1251_acx_cts_protect(wl, CTSPROTECT_DISABLE);
  if (ret < 0) {
   wl1251_warning("Set ctsprotect failed %d", ret);
   goto out_sleep;
  }
 }

 if (changed & BSS_CHANGED_ARP_FILTER) {
  __be32 addr = bss_conf->arp_addr_list[0];
  WARN_ON(wl->bss_type != BSS_TYPE_STA_BSS);

  enable = bss_conf->arp_addr_cnt == 1 && bss_conf->assoc;
  ret = wl1251_acx_arp_ip_filter(wl, enable, addr);
  if (ret < 0)
   goto out_sleep;
 }

 if (changed & BSS_CHANGED_BEACON) {
  beacon = ieee80211_beacon_get(hw, vif);
  if (!beacon)
   goto out_sleep;

  ret = wl1251_cmd_template_set(wl, CMD_BEACON, beacon->data,
           beacon->len);

  if (ret < 0) {
   dev_kfree_skb(beacon);
   goto out_sleep;
  }

  ret = wl1251_cmd_template_set(wl, CMD_PROBE_RESP, beacon->data,
           beacon->len);

  dev_kfree_skb(beacon);

  if (ret < 0)
   goto out_sleep;

  ret = wl1251_join(wl, wl->bss_type, wl->channel,
      wl->beacon_int, wl->dtim_period);

  if (ret < 0)
   goto out_sleep;
 }

out_sleep:
 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);
}
