
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wilc_vif {int ndev; } ;
struct wid {int size; int * val; int id; } ;
typedef int s8 ;


 int WID_POWER_MANAGEMENT ;
 int WILC_FW_MIN_FAST_PS ;
 int WILC_FW_NO_POWERSAVE ;
 int WILC_SET_CFG ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_set_power_mgmt(struct wilc_vif *vif, bool enabled, u32 timeout)
{
 struct wid wid;
 int result;
 s8 power_mode;

 if (enabled)
  power_mode = WILC_FW_MIN_FAST_PS;
 else
  power_mode = WILC_FW_NO_POWERSAVE;

 wid.id = WID_POWER_MANAGEMENT;
 wid.val = &power_mode;
 wid.size = sizeof(char);
 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to send power management\n");

 return result;
}
