
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct wl12xx_cmd_channel_switch {scalar_t__ post_switch_tx_disable; int stop_tx; int switch_time; int channel; int role_id; } ;
struct wl1271 {int dummy; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_channel_switch {int block_tx; int count; TYPE_2__ chandef; } ;
struct TYPE_3__ {int hw_value; } ;


 int CMD_CHANNEL_SWITCH ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_cmd_channel_switch*) ;
 struct wl12xx_cmd_channel_switch* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_channel_switch*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl12xx_cmd_channel_switch(struct wl1271 *wl,
         struct wl12xx_vif *wlvif,
         struct ieee80211_channel_switch *ch_switch)
{
 struct wl12xx_cmd_channel_switch *cmd;
 int ret;

 wl1271_debug(DEBUG_ACX, "cmd channel switch");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->role_id = wlvif->role_id;
 cmd->channel = ch_switch->chandef.chan->hw_value;
 cmd->switch_time = ch_switch->count;
 cmd->stop_tx = ch_switch->block_tx;



 cmd->post_switch_tx_disable = 0;

 ret = wl1271_cmd_send(wl, CMD_CHANNEL_SWITCH, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send channel switch command");
  goto out_free;
 }

out_free:
 kfree(cmd);

out:
 return ret;
}
