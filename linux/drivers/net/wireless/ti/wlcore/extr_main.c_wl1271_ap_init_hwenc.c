
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ bcast_hlid; struct wl1271_ap_key** recorded_keys; } ;
struct wl12xx_vif {TYPE_1__ ap; int default_key; } ;
struct wl1271_ap_key {scalar_t__ hlid; scalar_t__ key_type; int tx_seq_16; int tx_seq_32; int key; int key_size; int id; } ;
struct wl1271 {int dummy; } ;


 int KEY_ADD_OR_REPLACE ;
 scalar_t__ KEY_WEP ;
 int MAX_NUM_KEYS ;
 scalar_t__ WL12XX_INVALID_LINK_ID ;
 int wl1271_cmd_set_ap_key (struct wl1271*,struct wl12xx_vif*,int ,int ,scalar_t__,int ,int ,scalar_t__,int ,int ) ;
 int wl1271_free_ap_keys (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_cmd_set_default_wep_key (struct wl1271*,int ,scalar_t__) ;

__attribute__((used)) static int wl1271_ap_init_hwenc(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int i, ret = 0;
 struct wl1271_ap_key *key;
 bool wep_key_added = 0;

 for (i = 0; i < MAX_NUM_KEYS; i++) {
  u8 hlid;
  if (wlvif->ap.recorded_keys[i] == ((void*)0))
   break;

  key = wlvif->ap.recorded_keys[i];
  hlid = key->hlid;
  if (hlid == WL12XX_INVALID_LINK_ID)
   hlid = wlvif->ap.bcast_hlid;

  ret = wl1271_cmd_set_ap_key(wl, wlvif, KEY_ADD_OR_REPLACE,
         key->id, key->key_type,
         key->key_size, key->key,
         hlid, key->tx_seq_32,
         key->tx_seq_16);
  if (ret < 0)
   goto out;

  if (key->key_type == KEY_WEP)
   wep_key_added = 1;
 }

 if (wep_key_added) {
  ret = wl12xx_cmd_set_default_wep_key(wl, wlvif->default_key,
           wlvif->ap.bcast_hlid);
  if (ret < 0)
   goto out;
 }

out:
 wl1271_free_ap_keys(wl, wlvif);
 return ret;
}
