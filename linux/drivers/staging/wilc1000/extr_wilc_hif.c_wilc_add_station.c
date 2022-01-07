
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int ndev; } ;
struct wid {int * val; scalar_t__ size; int type; int id; } ;
struct station_parameters {scalar_t__ supported_rates_len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WID_ADD_STA ;
 int WID_BIN ;
 scalar_t__ WILC_ADD_STA_LENGTH ;
 int WILC_SET_CFG ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int netdev_err (int ,char*) ;
 int wilc_hif_pack_sta_param (int *,int const*,struct station_parameters*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_add_station(struct wilc_vif *vif, const u8 *mac,
       struct station_parameters *params)
{
 struct wid wid;
 int result;
 u8 *cur_byte;

 wid.id = WID_ADD_STA;
 wid.type = WID_BIN;
 wid.size = WILC_ADD_STA_LENGTH + params->supported_rates_len;
 wid.val = kmalloc(wid.size, GFP_KERNEL);
 if (!wid.val)
  return -ENOMEM;

 cur_byte = wid.val;
 wilc_hif_pack_sta_param(cur_byte, mac, params);

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result != 0)
  netdev_err(vif->ndev, "Failed to send add station\n");

 kfree(wid.val);

 return result;
}
