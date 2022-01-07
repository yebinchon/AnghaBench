
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl18xx_cmd_smart_config_start {int group_id_bitmask; } ;
struct wl1271 {int dummy; } ;


 int CMD_SMART_CONFIG_START ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl18xx_cmd_smart_config_start*) ;
 struct wl18xx_cmd_smart_config_start* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl18xx_cmd_smart_config_start*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;

int wl18xx_cmd_smart_config_start(struct wl1271 *wl, u32 group_bitmap)
{
 struct wl18xx_cmd_smart_config_start *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd smart config start group_bitmap=0x%x",
       group_bitmap);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->group_id_bitmask = cpu_to_le32(group_bitmap);

 ret = wl1271_cmd_send(wl, CMD_SMART_CONFIG_START, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send smart config start command");
  goto out_free;
 }

out_free:
 kfree(cmd);
out:
 return ret;
}
