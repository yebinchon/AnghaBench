
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wid {int size; int * val; int type; int id; } ;


 int WID_CHAR ;
 int WID_CURRENT_CHANNEL ;
 int WILC_SET_CFG ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_set_mac_chnl_num(struct wilc_vif *vif, u8 channel)
{
 struct wid wid;
 int result;

 wid.id = WID_CURRENT_CHANNEL;
 wid.type = WID_CHAR;
 wid.size = sizeof(char);
 wid.val = &channel;

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to set channel\n");

 return result;
}
