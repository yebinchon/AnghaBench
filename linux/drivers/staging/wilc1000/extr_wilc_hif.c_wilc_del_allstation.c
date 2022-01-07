
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wilc_del_all_sta {int assoc_sta; int * mac; } ;
struct wid {int size; int* val; int type; int id; } ;
typedef int del_sta ;


 int ETH_ALEN ;
 int WID_DEL_ALL_STA ;
 int WID_STR ;
 int WILC_MAX_NUM_STA ;
 int WILC_SET_CFG ;
 int ether_addr_copy (int ,int*) ;
 int is_zero_ether_addr (int*) ;
 int memset (struct wilc_del_all_sta*,int,int) ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_del_allstation(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN])
{
 struct wid wid;
 int result;
 int i;
 u8 assoc_sta = 0;
 struct wilc_del_all_sta del_sta;

 memset(&del_sta, 0x0, sizeof(del_sta));
 for (i = 0; i < WILC_MAX_NUM_STA; i++) {
  if (!is_zero_ether_addr(mac_addr[i])) {
   assoc_sta++;
   ether_addr_copy(del_sta.mac[i], mac_addr[i]);
  }
 }

 if (!assoc_sta)
  return 0;

 del_sta.assoc_sta = assoc_sta;

 wid.id = WID_DEL_ALL_STA;
 wid.type = WID_STR;
 wid.size = (assoc_sta * ETH_ALEN) + 1;
 wid.val = (u8 *)&del_sta;

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to send delete all station\n");

 return result;
}
