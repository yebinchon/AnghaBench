
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_inconnection_sta {int role_id; int addr; } ;
struct wl1271 {int dummy; } ;


 int ACX_UPDATE_INCONNECTION_STA_LIST ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_inconnection_sta*) ;
 struct wl1271_acx_inconnection_sta* kzalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_inconnection_sta*,int) ;
 int wl1271_debug (int ,char*,int *) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_set_inconnection_sta(struct wl1271 *wl,
        struct wl12xx_vif *wlvif, u8 *addr)
{
 struct wl1271_acx_inconnection_sta *acx = ((void*)0);
 int ret;

 wl1271_debug(DEBUG_ACX, "acx set inconnaction sta %pM", addr);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx)
  return -ENOMEM;

 memcpy(acx->addr, addr, ETH_ALEN);
 acx->role_id = wlvif->role_id;

 ret = wl1271_cmd_configure(wl, ACX_UPDATE_INCONNECTION_STA_LIST,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx set inconnaction sta failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
