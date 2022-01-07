
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wilc_wep_key {int key; void* key_len; void* index; } ;
struct wilc_vif {int ndev; } ;
struct wid {void** val; void* size; int type; int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WID_ADD_WEP_KEY ;
 int WID_STR ;
 int WILC_SET_CFG ;
 int kfree (struct wilc_wep_key*) ;
 struct wilc_wep_key* kzalloc (void*,int ) ;
 int memcpy (int ,void* const*,void*) ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_add_wep_key_bss_sta(struct wilc_vif *vif, const u8 *key, u8 len,
        u8 index)
{
 struct wid wid;
 int result;
 struct wilc_wep_key *wep_key;

 wid.id = WID_ADD_WEP_KEY;
 wid.type = WID_STR;
 wid.size = sizeof(*wep_key) + len;
 wep_key = kzalloc(wid.size, GFP_KERNEL);
 if (!wep_key)
  return -ENOMEM;

 wid.val = (u8 *)wep_key;

 wep_key->index = index;
 wep_key->key_len = len;
 memcpy(wep_key->key, key, len);

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 if (result)
  netdev_err(vif->ndev,
      "Failed to add wep key config packet\n");

 kfree(wep_key);
 return result;
}
