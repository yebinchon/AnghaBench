
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int dummy; } ;
struct wid {int size; int * val; int type; int id; } ;


 int WID_CHAR ;
 int WID_TX_POWER ;
 int WILC_GET_CFG ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
{
 struct wid wid;

 wid.id = WID_TX_POWER;
 wid.type = WID_CHAR;
 wid.val = tx_power;
 wid.size = sizeof(char);

 return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
}
