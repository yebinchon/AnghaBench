
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251_cmd_trigger_scan_to {int timeout; } ;
struct wl1251 {int dummy; } ;


 int CMD_TRIGGER_SCAN_TO ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1251_cmd_trigger_scan_to*) ;
 struct wl1251_cmd_trigger_scan_to* kzalloc (int,int ) ;
 int wl1251_cmd_send (struct wl1251*,int ,struct wl1251_cmd_trigger_scan_to*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*,int) ;

int wl1251_cmd_trigger_scan_to(struct wl1251 *wl, u32 timeout)
{
 struct wl1251_cmd_trigger_scan_to *cmd;
 int ret;

 wl1251_debug(DEBUG_CMD, "cmd trigger scan to");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->timeout = timeout;

 ret = wl1251_cmd_send(wl, CMD_TRIGGER_SCAN_TO, cmd, sizeof(*cmd));
 if (ret < 0) {
  wl1251_error("cmd trigger scan to failed: %d", ret);
  goto out;
 }

out:
 kfree(cmd);
 return ret;
}
