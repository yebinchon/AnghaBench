
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * params; } ;
struct TYPE_4__ {TYPE_1__ sg; } ;
struct wl1271 {int zone_master_mac_addr; TYPE_2__ conf; } ;
struct acx_time_sync_cfg {int zone_mac_addr; int sync_mode; } ;


 int ACX_TIME_SYNC_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t WL18XX_CONF_SG_TIME_SYNC ;
 int kfree (struct acx_time_sync_cfg*) ;
 struct acx_time_sync_cfg* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_time_sync_cfg*,int) ;
 int wl1271_debug (int ,char*,int ,int ) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_time_sync_cfg(struct wl1271 *wl)
{
 struct acx_time_sync_cfg *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx time sync cfg: mode %d, addr: %pM",
       wl->conf.sg.params[WL18XX_CONF_SG_TIME_SYNC],
       wl->zone_master_mac_addr);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->sync_mode = wl->conf.sg.params[WL18XX_CONF_SG_TIME_SYNC];
 memcpy(acx->zone_mac_addr, wl->zone_master_mac_addr, ETH_ALEN);

 ret = wl1271_cmd_configure(wl, ACX_TIME_SYNC_CFG,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx time sync cfg failed: %d", ret);
  goto out;
 }
out:
 kfree(acx);
 return ret;
}
