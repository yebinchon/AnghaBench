
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl18xx_cmd_smart_config_set_group_key {int key; int group_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_SMART_CONFIG_SET_GROUP_KEY ;
 int DEBUG_CMD ;
 int E2BIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl18xx_cmd_smart_config_set_group_key*) ;
 struct wl18xx_cmd_smart_config_set_group_key* kzalloc (int,int ) ;
 int memcpy (int ,int*,int) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl18xx_cmd_smart_config_set_group_key*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*,...) ;

int wl18xx_cmd_smart_config_set_group_key(struct wl1271 *wl, u16 group_id,
       u8 key_len, u8 *key)
{
 struct wl18xx_cmd_smart_config_set_group_key *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd smart config set group key id=0x%x",
       group_id);

 if (key_len != sizeof(cmd->key)) {
  wl1271_error("invalid group key size: %d", key_len);
  return -E2BIG;
 }

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->group_id = cpu_to_le32(group_id);
 memcpy(cmd->key, key, key_len);

 ret = wl1271_cmd_send(wl, CMD_SMART_CONFIG_SET_GROUP_KEY, cmd,
         sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send smart config set group key cmd");
  goto out_free;
 }

out_free:
 kfree(cmd);
out:
 return ret;
}
