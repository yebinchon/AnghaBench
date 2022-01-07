
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {size_t global_hlid; size_t bcast_hlid; } ;
struct wl12xx_vif {int role_id; int basic_rate_set; int band; TYPE_5__ ap; scalar_t__ p2p; scalar_t__ ssid_len; int ssid; int channel_type; int channel; int wmm_enabled; int beacon_int; int total_freed_pkts; } ;
struct TYPE_9__ {size_t global_hlid; size_t broadcast_hlid; int reset_tsf; void* local_rates; int ssid; scalar_t__ ssid_len; int ssid_type; int wmm; int beacon_expiry; int dtim_interval; void* beacon_interval; void* basic_rate_set; int bcast_session_id; int global_session_id; int bss_index; void* aging_period; } ;
struct wl12xx_cmd_role_start {int role_id; void* band; TYPE_4__ ap; int channel_type; int channel; } ;
struct TYPE_7__ {int ap_aging_period; } ;
struct TYPE_8__ {TYPE_2__ tx; } ;
struct wl1271 {int * session_ids; TYPE_3__ conf; TYPE_1__* links; } ;
struct ieee80211_bss_conf {scalar_t__ ssid_len; int ssid; int hidden_ssid; int dtim_period; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_6__ {int total_freed_pkts; } ;


 int CMD_ROLE_START ;
 int CONF_TX_CCK_RATES ;
 int CONF_TX_ENABLED_RATES ;
 int CONF_TX_MCS_RATES ;
 int DEBUG_CMD ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int WL1271_AP_BSS_INDEX ;
 int WL1271_AP_DEF_BEACON_EXP ;
 int WL12XX_SSID_TYPE_HIDDEN ;
 int WL12XX_SSID_TYPE_PUBLIC ;
 void* WLCORE_BAND_2_4GHZ ;
 void* WLCORE_BAND_5GHZ ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int ieee80211_vif_is_mesh (struct ieee80211_vif*) ;
 int kfree (struct wl12xx_cmd_role_start*) ;
 struct wl12xx_cmd_role_start* kzalloc (int,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_role_start*,int,int ) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_error (char*) ;
 int wl1271_warning (char*,int) ;
 int wl12xx_allocate_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;
 int wlcore_get_native_channel_type (int ) ;
 int wlcore_hw_ap_get_mimo_wide_rate_mask (struct wl1271*,struct wl12xx_vif*) ;

int wl12xx_cmd_role_start_ap(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl12xx_cmd_role_start *cmd;
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
 u32 supported_rates;
 int ret;

 wl1271_debug(DEBUG_CMD, "cmd role start ap %d", wlvif->role_id);


 if (!ieee80211_vif_is_mesh(vif)) {

  if (wlvif->ssid_len == 0 && !bss_conf->hidden_ssid) {
   wl1271_error("got a null SSID from beacon/bss");
   ret = -EINVAL;
   goto out;
  }
 }

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wl12xx_allocate_link(wl, wlvif, &wlvif->ap.global_hlid);
 if (ret < 0)
  goto out_free;

 ret = wl12xx_allocate_link(wl, wlvif, &wlvif->ap.bcast_hlid);
 if (ret < 0)
  goto out_free_global;


 wl->links[wlvif->ap.bcast_hlid].total_freed_pkts =
      wlvif->total_freed_pkts;

 cmd->role_id = wlvif->role_id;
 cmd->ap.aging_period = cpu_to_le16(wl->conf.tx.ap_aging_period);
 cmd->ap.bss_index = WL1271_AP_BSS_INDEX;
 cmd->ap.global_hlid = wlvif->ap.global_hlid;
 cmd->ap.broadcast_hlid = wlvif->ap.bcast_hlid;
 cmd->ap.global_session_id = wl->session_ids[wlvif->ap.global_hlid];
 cmd->ap.bcast_session_id = wl->session_ids[wlvif->ap.bcast_hlid];
 cmd->ap.basic_rate_set = cpu_to_le32(wlvif->basic_rate_set);
 cmd->ap.beacon_interval = cpu_to_le16(wlvif->beacon_int);
 cmd->ap.dtim_interval = bss_conf->dtim_period;
 cmd->ap.beacon_expiry = WL1271_AP_DEF_BEACON_EXP;

 cmd->ap.reset_tsf = 1;
 cmd->ap.wmm = wlvif->wmm_enabled;
 cmd->channel = wlvif->channel;
 cmd->channel_type = wlcore_get_native_channel_type(wlvif->channel_type);

 if (!bss_conf->hidden_ssid) {

  cmd->ap.ssid_type = WL12XX_SSID_TYPE_PUBLIC;
  cmd->ap.ssid_len = wlvif->ssid_len;
  memcpy(cmd->ap.ssid, wlvif->ssid, wlvif->ssid_len);
 } else {
  cmd->ap.ssid_type = WL12XX_SSID_TYPE_HIDDEN;
  cmd->ap.ssid_len = bss_conf->ssid_len;
  memcpy(cmd->ap.ssid, bss_conf->ssid, bss_conf->ssid_len);
 }

 supported_rates = CONF_TX_ENABLED_RATES | CONF_TX_MCS_RATES |
  wlcore_hw_ap_get_mimo_wide_rate_mask(wl, wlvif);
 if (wlvif->p2p)
  supported_rates &= ~CONF_TX_CCK_RATES;

 wl1271_debug(DEBUG_CMD, "cmd role start ap with supported_rates 0x%08x",
       supported_rates);

 cmd->ap.local_rates = cpu_to_le32(supported_rates);

 switch (wlvif->band) {
 case 129:
  cmd->band = WLCORE_BAND_2_4GHZ;
  break;
 case 128:
  cmd->band = WLCORE_BAND_5GHZ;
  break;
 default:
  wl1271_warning("ap start - unknown band: %d", (int)wlvif->band);
  cmd->band = WLCORE_BAND_2_4GHZ;
  break;
 }

 ret = wl1271_cmd_send(wl, CMD_ROLE_START, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to initiate cmd role start ap");
  goto out_free_bcast;
 }

 goto out_free;

out_free_bcast:
 wl12xx_free_link(wl, wlvif, &wlvif->ap.bcast_hlid);

out_free_global:
 wl12xx_free_link(wl, wlvif, &wlvif->ap.global_hlid);

out_free:
 kfree(cmd);

out:
 return ret;
}
