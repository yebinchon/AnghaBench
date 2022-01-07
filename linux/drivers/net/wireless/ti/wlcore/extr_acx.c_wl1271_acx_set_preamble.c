
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_preamble {int preamble; int role_id; } ;
typedef enum acx_preamble_type { ____Placeholder_acx_preamble_type } acx_preamble_type ;


 int ACX_PREAMBLE_TYPE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_preamble*) ;
 struct acx_preamble* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_preamble*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_set_preamble(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       enum acx_preamble_type preamble)
{
 struct acx_preamble *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx_set_preamble");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->preamble = preamble;

 ret = wl1271_cmd_configure(wl, ACX_PREAMBLE_TYPE, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("Setting of preamble failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
