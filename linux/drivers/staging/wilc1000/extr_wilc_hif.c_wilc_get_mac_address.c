
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wid {int * val; int size; int type; int id; } ;


 int ETH_ALEN ;
 int WID_MAC_ADDR ;
 int WID_STR ;
 int WILC_GET_CFG ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
{
 int result;
 struct wid wid;

 wid.id = WID_MAC_ADDR;
 wid.type = WID_STR;
 wid.size = ETH_ALEN;
 wid.val = mac_addr;

 result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to get mac address\n");

 return result;
}
