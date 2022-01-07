
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_cmd_dfs_master_restart {int role_id; } ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_DFS_MASTER_RESTART ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl18xx_cmd_dfs_master_restart*) ;
 struct wl18xx_cmd_dfs_master_restart* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl18xx_cmd_dfs_master_restart*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;

int wl18xx_cmd_dfs_master_restart(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl18xx_cmd_dfs_master_restart *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd dfs master restart (role %d)",
       wlvif->role_id);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->role_id = wlvif->role_id;

 ret = wl1271_cmd_send(wl, CMD_DFS_MASTER_RESTART,
         cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send dfs master restart command");
  goto out_free;
 }
out_free:
 kfree(cmd);
 return ret;
}
