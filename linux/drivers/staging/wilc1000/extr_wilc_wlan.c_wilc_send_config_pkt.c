
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct wilc_vif {int wilc; } ;
struct wid {int size; int val; int id; } ;


 int ETIMEDOUT ;
 scalar_t__ WILC_GET_CFG ;
 scalar_t__ WILC_SET_CFG ;
 int wilc_get_vif_idx (struct wilc_vif*) ;
 int wilc_wlan_cfg_get (struct wilc_vif*,int,int ,int,int) ;
 int wilc_wlan_cfg_get_val (int ,int ,int ,int ) ;
 int wilc_wlan_cfg_set (struct wilc_vif*,int,int ,int ,int ,int,int) ;

int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
    u32 count)
{
 int i;
 int ret = 0;
 u32 drv = wilc_get_vif_idx(vif);

 if (mode == WILC_GET_CFG) {
  for (i = 0; i < count; i++) {
   if (!wilc_wlan_cfg_get(vif, !i,
            wids[i].id,
            (i == count - 1),
            drv)) {
    ret = -ETIMEDOUT;
    break;
   }
  }
  for (i = 0; i < count; i++) {
   wids[i].size = wilc_wlan_cfg_get_val(vif->wilc,
            wids[i].id,
            wids[i].val,
            wids[i].size);
  }
 } else if (mode == WILC_SET_CFG) {
  for (i = 0; i < count; i++) {
   if (!wilc_wlan_cfg_set(vif, !i,
            wids[i].id,
            wids[i].val,
            wids[i].size,
            (i == count - 1),
            drv)) {
    ret = -ETIMEDOUT;
    break;
   }
  }
 }

 return ret;
}
