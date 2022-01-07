
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {size_t hlid; } ;
struct TYPE_4__ {size_t bcast_hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; size_t encryption_type; TYPE_2__ sta; TYPE_1__ ap; } ;
struct wl1271_station {size_t hlid; } ;
struct wl1271 {TYPE_3__* links; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int cipher; int key; int keylen; int keyidx; int flags; int hw_key_idx; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_6__ {int total_freed_pkts; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int DEBUG_CRYPT ;
 int DEBUG_MAC80211 ;

 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 int KEY_ADD_OR_REPLACE ;
 size_t KEY_AES ;
 size_t KEY_GEM ;
 int KEY_REMOVE ;
 size_t KEY_TKIP ;
 size_t KEY_WEP ;


 int WL1271_TX_SECURITY_HI32 (int ) ;
 int WL1271_TX_SECURITY_LO16 (int ) ;
 size_t WL12XX_INVALID_LINK_ID ;




 int wl1271_cmd_build_arp_rsp (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_debug (int ,char*,...) ;
 int wl1271_dump (int ,char*,int ,int ) ;
 int wl1271_error (char*,...) ;
 int wl1271_set_key (struct wl1271*,struct wl12xx_vif*,int ,int ,size_t,int ,int ,int ,int ,struct ieee80211_sta*) ;
 int wl1271_warning (char*,int) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

int wlcore_set_key(struct wl1271 *wl, enum set_key_cmd cmd,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key_conf)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;
 u32 tx_seq_32 = 0;
 u16 tx_seq_16 = 0;
 u8 key_type;
 u8 hlid;

 wl1271_debug(DEBUG_MAC80211, "mac80211 set key");

 wl1271_debug(DEBUG_CRYPT, "CMD: 0x%x sta: %p", cmd, sta);
 wl1271_debug(DEBUG_CRYPT, "Key: algo:0x%x, id:%d, len:%d flags 0x%x",
       key_conf->cipher, key_conf->keyidx,
       key_conf->keylen, key_conf->flags);
 wl1271_dump(DEBUG_CRYPT, "KEY: ", key_conf->key, key_conf->keylen);

 if (wlvif->bss_type == BSS_TYPE_AP_BSS)
  if (sta) {
   struct wl1271_station *wl_sta = (void *)sta->drv_priv;
   hlid = wl_sta->hlid;
  } else {
   hlid = wlvif->ap.bcast_hlid;
  }
 else
  hlid = wlvif->sta.hlid;

 if (hlid != WL12XX_INVALID_LINK_ID) {
  u64 tx_seq = wl->links[hlid].total_freed_pkts;
  tx_seq_32 = WL1271_TX_SECURITY_HI32(tx_seq);
  tx_seq_16 = WL1271_TX_SECURITY_LO16(tx_seq);
 }

 switch (key_conf->cipher) {
 case 128:
 case 129:
  key_type = KEY_WEP;

  key_conf->hw_key_idx = key_conf->keyidx;
  break;
 case 130:
  key_type = KEY_TKIP;
  key_conf->hw_key_idx = key_conf->keyidx;
  break;
 case 131:
  key_type = KEY_AES;
  key_conf->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
  break;
 case 132:
  key_type = KEY_GEM;
  break;
 default:
  wl1271_error("Unknown key algo 0x%x", key_conf->cipher);

  return -EOPNOTSUPP;
 }

 switch (cmd) {
 case 133:
  ret = wl1271_set_key(wl, wlvif, KEY_ADD_OR_REPLACE,
     key_conf->keyidx, key_type,
     key_conf->keylen, key_conf->key,
     tx_seq_32, tx_seq_16, sta);
  if (ret < 0) {
   wl1271_error("Could not add or replace key");
   return ret;
  }





  if (wlvif->bss_type == BSS_TYPE_STA_BSS &&
      (sta || key_type == KEY_WEP) &&
      wlvif->encryption_type != key_type) {
   wlvif->encryption_type = key_type;
   ret = wl1271_cmd_build_arp_rsp(wl, wlvif);
   if (ret < 0) {
    wl1271_warning("build arp rsp failed: %d", ret);
    return ret;
   }
  }
  break;

 case 134:
  ret = wl1271_set_key(wl, wlvif, KEY_REMOVE,
         key_conf->keyidx, key_type,
         key_conf->keylen, key_conf->key,
         0, 0, sta);
  if (ret < 0) {
   wl1271_error("Could not remove key");
   return ret;
  }
  break;

 default:
  wl1271_error("Unsupported key cmd 0x%x", cmd);
  return -EOPNOTSUPP;
 }

 return ret;
}
