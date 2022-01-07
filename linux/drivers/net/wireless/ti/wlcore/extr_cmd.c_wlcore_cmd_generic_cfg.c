
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wlcore_cmd_generic_cfg {void* value; void* enable; void* feature; int role_id; } ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_GENERIC_CFG ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wlcore_cmd_generic_cfg*) ;
 struct wlcore_cmd_generic_cfg* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wlcore_cmd_generic_cfg*,int,int ) ;
 int wl1271_debug (int ,char*,int ,void*,void*,void*) ;
 int wl1271_error (char*) ;

int wlcore_cmd_generic_cfg(struct wl1271 *wl, struct wl12xx_vif *wlvif,
      u8 feature, u8 enable, u8 value)
{
 struct wlcore_cmd_generic_cfg *cmd;
 int ret;

 wl1271_debug(DEBUG_CMD,
       "cmd generic cfg (role %d feature %d enable %d value %d)",
       wlvif->role_id, feature, enable, value);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->role_id = wlvif->role_id;
 cmd->feature = feature;
 cmd->enable = enable;
 cmd->value = value;

 ret = wl1271_cmd_send(wl, CMD_GENERIC_CFG, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send generic cfg command");
  goto out_free;
 }
out_free:
 kfree(cmd);
 return ret;
}
