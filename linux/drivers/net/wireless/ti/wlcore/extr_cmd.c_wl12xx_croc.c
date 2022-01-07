
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1271 {int roc_map; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ WL12XX_MAX_ROLES ;
 int __clear_bit (int ,int ) ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int test_bit (int ,int ) ;
 int wl12xx_cmd_croc (struct wl1271*,int ) ;
 int wl12xx_rearm_tx_watchdog_locked (struct wl1271*) ;

int wl12xx_croc(struct wl1271 *wl, u8 role_id)
{
 int ret = 0;

 if (WARN_ON(!test_bit(role_id, wl->roc_map)))
  return 0;

 ret = wl12xx_cmd_croc(wl, role_id);
 if (ret < 0)
  goto out;

 __clear_bit(role_id, wl->roc_map);






 if (find_first_bit(wl->roc_map, WL12XX_MAX_ROLES) >= WL12XX_MAX_ROLES)
  wl12xx_rearm_tx_watchdog_locked(wl);
out:
 return ret;
}
