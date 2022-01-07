
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_vif {int ndev; } ;
struct wid {int size; int * val; int type; int id; } ;
typedef int s8 ;
typedef scalar_t__ s32 ;


 scalar_t__ ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int WID_GET_INACTIVE_TIME ;
 int WID_INT ;
 int WID_SET_STA_MAC_INACTIVE_TIME ;
 int WID_STR ;
 int WILC_GET_CFG ;
 int WILC_SET_CFG ;
 int ether_addr_copy (int *,int const*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int netdev_err (int ,char*) ;
 scalar_t__ wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac, u32 *out_val)
{
 struct wid wid;
 s32 result;

 wid.id = WID_SET_STA_MAC_INACTIVE_TIME;
 wid.type = WID_STR;
 wid.size = ETH_ALEN;
 wid.val = kzalloc(wid.size, GFP_KERNEL);
 if (!wid.val)
  return -ENOMEM;

 ether_addr_copy(wid.val, mac);
 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 kfree(wid.val);
 if (result) {
  netdev_err(vif->ndev, "Failed to set inactive mac\n");
  return result;
 }

 wid.id = WID_GET_INACTIVE_TIME;
 wid.type = WID_INT;
 wid.val = (s8 *)out_val;
 wid.size = sizeof(u32);
 result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to get inactive time\n");

 return result;
}
