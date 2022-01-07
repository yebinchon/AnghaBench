
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int local_id; } ;
struct ieee80211_bss_conf {scalar_t__ bssid; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;
struct ieee80211_sta {int * addr; } ;
struct ieee80211_key_conf {int cipher; int flags; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int EINVAL ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int KEY_CTL_CCMP ;
 int KEY_CTL_TKIP ;
 int KEY_CTL_WEP ;
 int MAC_REVISION_A1 ;
 int MAX_KEY_TABLE ;
 int VNT_KEY_DEFAULTKEY ;
 int VNT_KEY_GROUP_ADDRESS ;
 int VNT_KEY_PAIRWISE ;




 int vnt_mac_disable_keyentry (struct vnt_private*,int) ;
 int vnt_set_keymode (struct ieee80211_hw*,int *,struct ieee80211_key_conf*,int ,int ,int) ;

int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
   struct ieee80211_vif *vif, struct ieee80211_key_conf *key)
{
 struct ieee80211_bss_conf *conf = &vif->bss_conf;
 struct vnt_private *priv = hw->priv;
 u8 *mac_addr = ((void*)0);
 u8 key_dec_mode = 0;
 int ret = 0, u;

 if (sta)
  mac_addr = &sta->addr[0];

 switch (key->cipher) {
 case 0:
  for (u = 0 ; u < MAX_KEY_TABLE; u++)
   vnt_mac_disable_keyentry(priv, u);
  return ret;

 case 128:
 case 129:
  for (u = 0; u < MAX_KEY_TABLE; u++)
   vnt_mac_disable_keyentry(priv, u);

  vnt_set_keymode(hw, mac_addr, key, VNT_KEY_DEFAULTKEY,
    KEY_CTL_WEP, 1);

  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;

  return ret;
 case 130:
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;

  key_dec_mode = KEY_CTL_TKIP;

  break;
 case 131:
  if (priv->local_id <= MAC_REVISION_A1)
   return -EINVAL;

  key_dec_mode = KEY_CTL_CCMP;

  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 }

 if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE) {
  vnt_set_keymode(hw, mac_addr, key, VNT_KEY_PAIRWISE,
    key_dec_mode, 1);
 } else {
  vnt_set_keymode(hw, mac_addr, key, VNT_KEY_DEFAULTKEY,
    key_dec_mode, 1);

  vnt_set_keymode(hw, (u8 *)conf->bssid, key,
    VNT_KEY_GROUP_ADDRESS, key_dec_mode, 1);
 }

 return 0;
}
