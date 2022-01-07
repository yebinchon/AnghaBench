
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251_cmd_set_keys {int key_type; } ;
struct wl1251 {int dummy; } ;
struct ieee80211_key_conf {int cipher; int flags; int keyidx; int hw_key_idx; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int KEY_AES_GROUP ;
 int KEY_AES_PAIRWISE ;
 int KEY_TKIP_MIC_GROUP ;
 int KEY_TKIP_MIC_PAIRWISE ;
 int KEY_WEP_ADDR ;
 int KEY_WEP_DEFAULT ;




 int is_broadcast_ether_addr (int const*) ;
 int wl1251_error (char*,int) ;

__attribute__((used)) static int wl1251_set_key_type(struct wl1251 *wl,
          struct wl1251_cmd_set_keys *key,
          enum set_key_cmd cmd,
          struct ieee80211_key_conf *mac80211_key,
          const u8 *addr)
{
 switch (mac80211_key->cipher) {
 case 128:
 case 129:
  if (is_broadcast_ether_addr(addr))
   key->key_type = KEY_WEP_DEFAULT;
  else
   key->key_type = KEY_WEP_ADDR;

  mac80211_key->hw_key_idx = mac80211_key->keyidx;
  break;
 case 130:
  if (is_broadcast_ether_addr(addr))
   key->key_type = KEY_TKIP_MIC_GROUP;
  else
   key->key_type = KEY_TKIP_MIC_PAIRWISE;

  mac80211_key->hw_key_idx = mac80211_key->keyidx;
  break;
 case 131:
  if (is_broadcast_ether_addr(addr))
   key->key_type = KEY_AES_GROUP;
  else
   key->key_type = KEY_AES_PAIRWISE;
  mac80211_key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
  break;
 default:
  wl1251_error("Unknown key cipher 0x%x", mac80211_key->cipher);
  return -EOPNOTSUPP;
 }

 return 0;
}
