
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl18xx_cmd_scan_stop {int scan_type; int role_id; } ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_STOP_SCAN ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl18xx_cmd_scan_stop*) ;
 struct wl18xx_cmd_scan_stop* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl18xx_cmd_scan_stop*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

__attribute__((used)) static int __wl18xx_scan_stop(struct wl1271 *wl, struct wl12xx_vif *wlvif,
          u8 scan_type)
{
 struct wl18xx_cmd_scan_stop *stop;
 int ret;

 wl1271_debug(DEBUG_CMD, "cmd periodic scan stop");

 stop = kzalloc(sizeof(*stop), GFP_KERNEL);
 if (!stop) {
  wl1271_error("failed to alloc memory to send sched scan stop");
  return -ENOMEM;
 }

 stop->role_id = wlvif->role_id;
 stop->scan_type = scan_type;

 ret = wl1271_cmd_send(wl, CMD_STOP_SCAN, stop, sizeof(*stop), 0);
 if (ret < 0) {
  wl1271_error("failed to send sched scan stop command");
  goto out_free;
 }

out_free:
 kfree(stop);
 return ret;
}
