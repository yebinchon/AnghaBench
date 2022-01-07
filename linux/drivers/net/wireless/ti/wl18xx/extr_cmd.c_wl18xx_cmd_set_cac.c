
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlcore_cmd_cac_start {int bandwidth; int band; int channel; int role_id; } ;
struct wl12xx_vif {scalar_t__ band; int channel_type; int channel; int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_CAC_START ;
 int CMD_CAC_STOP ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int WLCORE_BAND_5GHZ ;
 int kfree (struct wlcore_cmd_cac_start*) ;
 struct wlcore_cmd_cac_start* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wlcore_cmd_cac_start*,int,int ) ;
 int wl1271_debug (int ,char*,int ,char*) ;
 int wl1271_error (char*) ;
 int wlcore_get_native_channel_type (int ) ;

int wl18xx_cmd_set_cac(struct wl1271 *wl, struct wl12xx_vif *wlvif, bool start)
{
 struct wlcore_cmd_cac_start *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd cac (channel %d) %s",
       wlvif->channel, start ? "start" : "stop");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->role_id = wlvif->role_id;
 cmd->channel = wlvif->channel;
 if (wlvif->band == NL80211_BAND_5GHZ)
  cmd->band = WLCORE_BAND_5GHZ;
 cmd->bandwidth = wlcore_get_native_channel_type(wlvif->channel_type);

 ret = wl1271_cmd_send(wl,
         start ? CMD_CAC_START : CMD_CAC_STOP,
         cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send cac command");
  goto out_free;
 }

out_free:
 kfree(cmd);
 return ret;
}
