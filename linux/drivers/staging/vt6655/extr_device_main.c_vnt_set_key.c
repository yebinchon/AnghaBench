
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int key_entry_inuse; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int hw_key_idx; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;



 int EOPNOTSUPP ;

 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int vnt_set_keys (struct ieee80211_hw*,struct ieee80211_sta*,struct ieee80211_vif*,struct ieee80211_key_conf*) ;

__attribute__((used)) static int vnt_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
         struct ieee80211_vif *vif, struct ieee80211_sta *sta,
         struct ieee80211_key_conf *key)
{
 struct vnt_private *priv = hw->priv;

 switch (cmd) {
 case 128:
  if (vnt_set_keys(hw, sta, vif, key))
   return -EOPNOTSUPP;
  break;
 case 129:
  if (test_bit(key->hw_key_idx, &priv->key_entry_inuse))
   clear_bit(key->hw_key_idx, &priv->key_entry_inuse);
 default:
  break;
 }

 return 0;
}
