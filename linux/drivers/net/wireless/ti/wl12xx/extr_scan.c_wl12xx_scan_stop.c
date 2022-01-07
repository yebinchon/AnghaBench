
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct wl1271_cmd_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct wl1271 {TYPE_1__ scan; } ;


 int CMD_STOP_SCAN ;
 int DEBUG_CMD ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WL1271_SCAN_STATE_IDLE ;
 int kfree (struct wl1271_cmd_header*) ;
 struct wl1271_cmd_header* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_header*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl12xx_scan_stop(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl1271_cmd_header *cmd = ((void*)0);
 int ret = 0;

 if (WARN_ON(wl->scan.state == WL1271_SCAN_STATE_IDLE))
  return -EINVAL;

 wl1271_debug(DEBUG_CMD, "cmd scan stop");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wl1271_cmd_send(wl, CMD_STOP_SCAN, cmd,
         sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("cmd stop_scan failed");
  goto out;
 }
out:
 kfree(cmd);
 return ret;
}
