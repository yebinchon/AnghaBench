
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wilc_vif {int ndev; } ;
struct wid {int * val; scalar_t__ size; int type; int id; } ;
struct cfg80211_beacon_data {scalar_t__ tail_len; int tail; scalar_t__ head_len; int head; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WID_ADD_BEACON ;
 int WID_BIN ;
 int WILC_SET_CFG ;
 int kfree (int *) ;
 int * kzalloc (scalar_t__,int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 int netdev_err (int ,char*) ;
 int put_unaligned_le32 (scalar_t__,int *) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_add_beacon(struct wilc_vif *vif, u32 interval, u32 dtim_period,
      struct cfg80211_beacon_data *params)
{
 struct wid wid;
 int result;
 u8 *cur_byte;

 wid.id = WID_ADD_BEACON;
 wid.type = WID_BIN;
 wid.size = params->head_len + params->tail_len + 16;
 wid.val = kzalloc(wid.size, GFP_KERNEL);
 if (!wid.val)
  return -ENOMEM;

 cur_byte = wid.val;
 put_unaligned_le32(interval, cur_byte);
 cur_byte += 4;
 put_unaligned_le32(dtim_period, cur_byte);
 cur_byte += 4;
 put_unaligned_le32(params->head_len, cur_byte);
 cur_byte += 4;

 if (params->head_len > 0)
  memcpy(cur_byte, params->head, params->head_len);
 cur_byte += params->head_len;

 put_unaligned_le32(params->tail_len, cur_byte);
 cur_byte += 4;

 if (params->tail_len > 0)
  memcpy(cur_byte, params->tail, params->tail_len);

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev, "Failed to send add beacon\n");

 kfree(wid.val);

 return result;
}
