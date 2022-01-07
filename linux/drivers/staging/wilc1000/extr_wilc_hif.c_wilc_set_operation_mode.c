
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wilc_drv_handler {int mode; int handler; } ;
struct wid {int size; int* val; int type; int id; } ;
typedef int drv ;


 int WID_SET_OPERATION_MODE ;
 int WID_STR ;
 int WILC_SET_CFG ;
 int cpu_to_le32 (int) ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_set_operation_mode(struct wilc_vif *vif, int index, u8 mode,
       u8 ifc_id)
{
 struct wid wid;
 int result;
 struct wilc_drv_handler drv;

 wid.id = WID_SET_OPERATION_MODE;
 wid.type = WID_STR;
 wid.size = sizeof(drv);
 wid.val = (u8 *)&drv;

 drv.handler = cpu_to_le32(index);
 drv.mode = (ifc_id | (mode << 1));

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to set driver handler\n");

 return result;
}
