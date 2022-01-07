
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_roaming_stats {int rssi_beacon; int role_id; } ;
typedef int s8 ;


 int ACX_ROAMING_STATISTICS_TBL ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_roaming_stats*) ;
 struct acx_roaming_stats* kzalloc (int,int ) ;
 int wl1271_cmd_interrogate (struct wl1271*,int ,struct acx_roaming_stats*,int,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wlcore_acx_average_rssi(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       s8 *avg_rssi)
{
 struct acx_roaming_stats *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx roaming statistics");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 ret = wl1271_cmd_interrogate(wl, ACX_ROAMING_STATISTICS_TBL,
         acx, sizeof(*acx), sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx roaming statistics failed: %d", ret);
  ret = -ENOMEM;
  goto out;
 }

 *avg_rssi = acx->rssi_beacon;
out:
 kfree(acx);
 return ret;
}
