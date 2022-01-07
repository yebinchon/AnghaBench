
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {size_t hlid; int role_chan_type; } ;
struct wl12xx_vif {scalar_t__ band; int basic_rate_set; TYPE_3__ sta; int channel_type; int rate_set; int role_id; scalar_t__ p2p; int ssid_len; int ssid; int beacon_int; int channel; } ;
struct TYPE_5__ {size_t hlid; int session; void* remote_rates; void* local_rates; int bssid; int ssid; int ssid_len; int ssid_type; int beacon_interval; void* basic_rate_set; } ;
struct wl12xx_cmd_role_start {TYPE_2__ sta; int channel_type; int channel; int band; int role_id; } ;
struct wl1271 {int * session_ids; } ;
struct TYPE_4__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int CMD_ROLE_START ;
 int CONF_TX_CCK_RATES ;
 int CONF_TX_ENABLED_RATES ;
 int CONF_TX_MCS_RATES ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_BAND_5GHZ ;
 size_t WL12XX_INVALID_LINK_ID ;
 int WL12XX_SSID_TYPE_ANY ;
 int WLCORE_BAND_5GHZ ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int kfree (struct wl12xx_cmd_role_start*) ;
 struct wl12xx_cmd_role_start* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_role_start*,int,int ) ;
 int wl1271_debug (int ,char*,int ,...) ;
 int wl1271_error (char*) ;
 int wl12xx_allocate_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;
 int wlcore_get_native_channel_type (int ) ;
 int wlcore_hw_sta_get_ap_rate_mask (struct wl1271*,struct wl12xx_vif*) ;

int wl12xx_cmd_role_start_sta(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct wl12xx_cmd_role_start *cmd;
 u32 supported_rates;
 int ret;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 wl1271_debug(DEBUG_CMD, "cmd role start sta %d", wlvif->role_id);

 cmd->role_id = wlvif->role_id;
 if (wlvif->band == NL80211_BAND_5GHZ)
  cmd->band = WLCORE_BAND_5GHZ;
 cmd->channel = wlvif->channel;
 cmd->sta.basic_rate_set = cpu_to_le32(wlvif->basic_rate_set);
 cmd->sta.beacon_interval = cpu_to_le16(wlvif->beacon_int);
 cmd->sta.ssid_type = WL12XX_SSID_TYPE_ANY;
 cmd->sta.ssid_len = wlvif->ssid_len;
 memcpy(cmd->sta.ssid, wlvif->ssid, wlvif->ssid_len);
 memcpy(cmd->sta.bssid, vif->bss_conf.bssid, ETH_ALEN);

 supported_rates = CONF_TX_ENABLED_RATES | CONF_TX_MCS_RATES |
     wlcore_hw_sta_get_ap_rate_mask(wl, wlvif);
 if (wlvif->p2p)
  supported_rates &= ~CONF_TX_CCK_RATES;

 cmd->sta.local_rates = cpu_to_le32(supported_rates);

 cmd->channel_type = wlcore_get_native_channel_type(wlvif->channel_type);

 if (wlvif->sta.hlid == WL12XX_INVALID_LINK_ID) {
  ret = wl12xx_allocate_link(wl, wlvif, &wlvif->sta.hlid);
  if (ret)
   goto out_free;
 }
 cmd->sta.hlid = wlvif->sta.hlid;
 cmd->sta.session = wl->session_ids[wlvif->sta.hlid];






 cmd->sta.remote_rates = cpu_to_le32(supported_rates);

 wl1271_debug(DEBUG_CMD, "role start: roleid=%d, hlid=%d, session=%d "
       "basic_rate_set: 0x%x, remote_rates: 0x%x",
       wlvif->role_id, cmd->sta.hlid, cmd->sta.session,
       wlvif->basic_rate_set, wlvif->rate_set);

 ret = wl1271_cmd_send(wl, CMD_ROLE_START, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to initiate cmd role start sta");
  goto err_hlid;
 }

 wlvif->sta.role_chan_type = wlvif->channel_type;
 goto out_free;

err_hlid:

 wl12xx_free_link(wl, wlvif, &wlvif->sta.hlid);

out_free:
 kfree(cmd);

out:
 return ret;
}
