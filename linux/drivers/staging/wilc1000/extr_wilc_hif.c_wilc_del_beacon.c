
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wid {int size; int * val; int type; int id; } ;


 int WID_CHAR ;
 int WID_DEL_BEACON ;
 int WILC_SET_CFG ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_del_beacon(struct wilc_vif *vif)
{
 int result;
 struct wid wid;
 u8 del_beacon = 0;

 wid.id = WID_DEL_BEACON;
 wid.type = WID_CHAR;
 wid.size = sizeof(char);
 wid.val = &del_beacon;

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to send delete beacon\n");

 return result;
}
