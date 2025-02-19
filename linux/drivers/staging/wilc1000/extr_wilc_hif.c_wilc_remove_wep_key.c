
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wid {int size; int * val; int type; int id; } ;


 int WID_REMOVE_WEP_KEY ;
 int WID_STR ;
 int WILC_SET_CFG ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_remove_wep_key(struct wilc_vif *vif, u8 index)
{
 struct wid wid;
 int result;

 wid.id = WID_REMOVE_WEP_KEY;
 wid.type = WID_STR;
 wid.size = sizeof(char);
 wid.val = &index;

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev,
      "Failed to send remove wep key config packet\n");
 return result;
}
