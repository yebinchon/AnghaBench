
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271_cmd_header {int dummy; } ;
struct wl1271 {int dummy; } ;


 int CMD_SMART_CONFIG_STOP ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_cmd_header*) ;
 struct wl1271_cmd_header* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_header*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl18xx_cmd_smart_config_stop(struct wl1271 *wl)
{
 struct wl1271_cmd_header *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd smart config stop");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wl1271_cmd_send(wl, CMD_SMART_CONFIG_STOP, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send smart config stop command");
  goto out_free;
 }

out_free:
 kfree(cmd);
out:
 return ret;
}
