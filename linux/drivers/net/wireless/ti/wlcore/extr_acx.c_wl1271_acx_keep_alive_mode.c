
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_keep_alive_mode {int enabled; int role_id; } ;
struct wl1271 {int dummy; } ;


 int ACX_KEEP_ALIVE_MODE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_keep_alive_mode*) ;
 struct wl1271_acx_keep_alive_mode* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_keep_alive_mode*,int) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_keep_alive_mode(struct wl1271 *wl, struct wl12xx_vif *wlvif,
          bool enable)
{
 struct wl1271_acx_keep_alive_mode *acx = ((void*)0);
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx keep alive mode: %d", enable);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->enabled = enable;

 ret = wl1271_cmd_configure(wl, ACX_KEEP_ALIVE_MODE, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx keep alive mode failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
