
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl18xx_cmd_dfs_radar_debug {int channel; } ;
struct wl1271 {int dummy; } ;


 int CMD_DFS_RADAR_DETECTION_DEBUG ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl18xx_cmd_dfs_radar_debug*) ;
 struct wl18xx_cmd_dfs_radar_debug* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl18xx_cmd_dfs_radar_debug*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;

int wl18xx_cmd_radar_detection_debug(struct wl1271 *wl, u8 channel)
{
 struct wl18xx_cmd_dfs_radar_debug *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd radar detection debug (chan %d)",
       channel);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->channel = channel;

 ret = wl1271_cmd_send(wl, CMD_DFS_RADAR_DETECTION_DEBUG,
         cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send radar detection debug command");
  goto out_free;
 }

out_free:
 kfree(cmd);
 return ret;
}
