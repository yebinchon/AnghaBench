
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_ctsprotect {int ctsprotect; int role_id; } ;
typedef enum acx_ctsprotect_type { ____Placeholder_acx_ctsprotect_type } acx_ctsprotect_type ;


 int ACX_CTS_PROTECTION ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_ctsprotect*) ;
 struct acx_ctsprotect* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_ctsprotect*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_cts_protect(struct wl1271 *wl, struct wl12xx_vif *wlvif,
      enum acx_ctsprotect_type ctsprotect)
{
 struct acx_ctsprotect *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx_set_ctsprotect");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->ctsprotect = ctsprotect;

 ret = wl1271_cmd_configure(wl, ACX_CTS_PROTECTION, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("Setting of ctsprotect failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
