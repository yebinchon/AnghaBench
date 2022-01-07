
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ bss_type; int dev_role_id; } ;
struct wl1271 {int roc_map; } ;


 scalar_t__ BSS_TYPE_IBSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ test_bit (int ,int ) ;
 int wl12xx_cmd_role_disable (struct wl1271*,int *) ;
 int wl12xx_cmd_role_stop_dev (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_croc (struct wl1271*,int ) ;
 int wlcore_is_p2p_mgmt (struct wl12xx_vif*) ;
 int wlcore_tx_work_locked (struct wl1271*) ;

int wl12xx_stop_dev(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;

 if (WARN_ON(!(wlvif->bss_type == BSS_TYPE_STA_BSS ||
        wlvif->bss_type == BSS_TYPE_IBSS)))
  return -EINVAL;


 ret = wlcore_tx_work_locked(wl);
 if (ret < 0)
  goto out;

 if (test_bit(wlvif->dev_role_id, wl->roc_map)) {
  ret = wl12xx_croc(wl, wlvif->dev_role_id);
  if (ret < 0)
   goto out;
 }

 ret = wl12xx_cmd_role_stop_dev(wl, wlvif);
 if (ret < 0)
  goto out;

 if (!wlcore_is_p2p_mgmt(wlvif)) {
  ret = wl12xx_cmd_role_disable(wl, &wlvif->dev_role_id);
  if (ret < 0)
   goto out;
 }

out:
 return ret;
}
