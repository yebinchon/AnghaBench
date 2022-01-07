
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_aid {int aid; int role_id; } ;


 int ACX_AID ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le16 (int ) ;
 int kfree (struct acx_aid*) ;
 struct acx_aid* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_aid*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_aid(struct wl1271 *wl, struct wl12xx_vif *wlvif, u16 aid)
{
 struct acx_aid *acx_aid;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx aid");

 acx_aid = kzalloc(sizeof(*acx_aid), GFP_KERNEL);
 if (!acx_aid) {
  ret = -ENOMEM;
  goto out;
 }

 acx_aid->role_id = wlvif->role_id;
 acx_aid->aid = cpu_to_le16(aid);

 ret = wl1271_cmd_configure(wl, ACX_AID, acx_aid, sizeof(*acx_aid));
 if (ret < 0) {
  wl1271_warning("failed to set aid: %d", ret);
  goto out;
 }

out:
 kfree(acx_aid);
 return ret;
}
