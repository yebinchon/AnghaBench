
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ bss_type; int role_id; int flags; } ;
struct wl1271_cmd_sched_scan_start {int tag; int role_id; } ;
struct wl1271 {int quirks; } ;


 scalar_t__ BSS_TYPE_STA_BSS ;
 int CMD_START_PERIODIC_SCAN ;
 int DEBUG_CMD ;
 int EBUSY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int WL1271_SCAN_DEFAULT_TAG ;
 int WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN ;
 int WLVIF_FLAG_IN_USE ;
 int kfree (struct wl1271_cmd_sched_scan_start*) ;
 struct wl1271_cmd_sched_scan_start* kzalloc (int,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_sched_scan_start*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl1271_scan_sched_scan_start(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl1271_cmd_sched_scan_start *start;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd periodic scan start");

 if (wlvif->bss_type != BSS_TYPE_STA_BSS)
  return -EOPNOTSUPP;

 if ((wl->quirks & WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN) &&
     test_bit(WLVIF_FLAG_IN_USE, &wlvif->flags))
  return -EBUSY;

 start = kzalloc(sizeof(*start), GFP_KERNEL);
 if (!start)
  return -ENOMEM;

 start->role_id = wlvif->role_id;
 start->tag = WL1271_SCAN_DEFAULT_TAG;

 ret = wl1271_cmd_send(wl, CMD_START_PERIODIC_SCAN, start,
         sizeof(*start), 0);
 if (ret < 0) {
  wl1271_error("failed to send scan start command");
  goto out_free;
 }

out_free:
 kfree(start);
 return ret;
}
