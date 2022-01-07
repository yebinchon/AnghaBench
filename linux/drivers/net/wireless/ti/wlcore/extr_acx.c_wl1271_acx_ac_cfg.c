
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_ac_cfg {void* tx_op_limit; void* aifsn; void* cw_max; void* cw_min; void* ac; int role_id; } ;


 int ACX_AC_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct acx_ac_cfg*) ;
 struct acx_ac_cfg* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_ac_cfg*,int) ;
 int wl1271_debug (int ,char*,void*,void*,int ,void*,int ) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_ac_cfg(struct wl1271 *wl, struct wl12xx_vif *wlvif,
        u8 ac, u8 cw_min, u16 cw_max, u8 aifsn, u16 txop)
{
 struct acx_ac_cfg *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx ac cfg %d cw_ming %d cw_max %d "
       "aifs %d txop %d", ac, cw_min, cw_max, aifsn, txop);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);

 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->ac = ac;
 acx->cw_min = cw_min;
 acx->cw_max = cpu_to_le16(cw_max);
 acx->aifsn = aifsn;
 acx->tx_op_limit = cpu_to_le16(txop);

 ret = wl1271_cmd_configure(wl, ACX_AC_CFG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx ac cfg failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
