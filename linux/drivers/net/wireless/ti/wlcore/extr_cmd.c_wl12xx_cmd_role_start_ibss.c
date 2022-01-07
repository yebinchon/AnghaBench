
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hlid; } ;
struct wl12xx_vif {scalar_t__ band; TYPE_3__ sta; int rate_set; int basic_rate_set; int role_id; int ssid_len; int ssid; int beacon_int; int channel; } ;
struct TYPE_5__ {int session; int hlid; void* local_rates; } ;
struct TYPE_4__ {scalar_t__ hlid; void* remote_rates; int bssid; int ssid; int ssid_len; int ssid_type; int dtim_interval; int beacon_interval; void* basic_rate_set; } ;
struct wl12xx_cmd_role_start {TYPE_2__ sta; TYPE_1__ ibss; int channel; int band; int role_id; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_bss_conf {int bssid; int dtim_period; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;


 int CMD_ROLE_START ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ WL12XX_INVALID_LINK_ID ;
 int WL12XX_SSID_TYPE_ANY ;
 int WLCORE_BAND_5GHZ ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct wl12xx_cmd_role_start*) ;
 struct wl12xx_cmd_role_start* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_role_start*,int,int ) ;
 int wl1271_debug (int ,char*,int ,...) ;
 int wl1271_error (char*) ;
 int wl12xx_allocate_link (struct wl1271*,struct wl12xx_vif*,scalar_t__*) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,scalar_t__*) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

int wl12xx_cmd_role_start_ibss(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct wl12xx_cmd_role_start *cmd;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
 int ret;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 wl1271_debug(DEBUG_CMD, "cmd role start ibss %d", wlvif->role_id);

 cmd->role_id = wlvif->role_id;
 if (wlvif->band == NL80211_BAND_5GHZ)
  cmd->band = WLCORE_BAND_5GHZ;
 cmd->channel = wlvif->channel;
 cmd->ibss.basic_rate_set = cpu_to_le32(wlvif->basic_rate_set);
 cmd->ibss.beacon_interval = cpu_to_le16(wlvif->beacon_int);
 cmd->ibss.dtim_interval = bss_conf->dtim_period;
 cmd->ibss.ssid_type = WL12XX_SSID_TYPE_ANY;
 cmd->ibss.ssid_len = wlvif->ssid_len;
 memcpy(cmd->ibss.ssid, wlvif->ssid, wlvif->ssid_len);
 memcpy(cmd->ibss.bssid, vif->bss_conf.bssid, ETH_ALEN);
 cmd->sta.local_rates = cpu_to_le32(wlvif->rate_set);

 if (wlvif->sta.hlid == WL12XX_INVALID_LINK_ID) {
  ret = wl12xx_allocate_link(wl, wlvif, &wlvif->sta.hlid);
  if (ret)
   goto out_free;
 }
 cmd->ibss.hlid = wlvif->sta.hlid;
 cmd->ibss.remote_rates = cpu_to_le32(wlvif->rate_set);

 wl1271_debug(DEBUG_CMD, "role start: roleid=%d, hlid=%d, session=%d "
       "basic_rate_set: 0x%x, remote_rates: 0x%x",
       wlvif->role_id, cmd->sta.hlid, cmd->sta.session,
       wlvif->basic_rate_set, wlvif->rate_set);

 wl1271_debug(DEBUG_CMD, "vif->bss_conf.bssid = %pM",
       vif->bss_conf.bssid);

 ret = wl1271_cmd_send(wl, CMD_ROLE_START, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to initiate cmd role enable");
  goto err_hlid;
 }

 goto out_free;

err_hlid:

 wl12xx_free_link(wl, wlvif, &wlvif->sta.hlid);

out_free:
 kfree(cmd);

out:
 return ret;
}
