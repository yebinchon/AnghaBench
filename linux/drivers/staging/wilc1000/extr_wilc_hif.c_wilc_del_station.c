
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wid {int val; int size; int type; int id; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int WID_BIN ;
 int WID_REMOVE_STA ;
 int WILC_SET_CFG ;
 int eth_broadcast_addr (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_del_station(struct wilc_vif *vif, const u8 *mac_addr)
{
 struct wid wid;
 int result;

 wid.id = WID_REMOVE_STA;
 wid.type = WID_BIN;
 wid.size = ETH_ALEN;
 wid.val = kzalloc(wid.size, GFP_KERNEL);
 if (!wid.val)
  return -ENOMEM;

 if (!mac_addr)
  eth_broadcast_addr(wid.val);
 else
  ether_addr_copy(wid.val, mac_addr);

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to del station\n");

 kfree(wid.val);

 return result;
}
