
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txentry_desc {int flags; int iv_len; int header_length; int iv_offset; int key_idx; int cipher; } ;
struct sk_buff {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int flags; int iv_len; int hw_key_idx; } ;


 int ENTRY_TXD_ENCRYPT ;
 int ENTRY_TXD_ENCRYPT_IV ;
 int ENTRY_TXD_ENCRYPT_MMIC ;
 int ENTRY_TXD_ENCRYPT_PAIRWISE ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int __set_bit (int ,int *) ;
 int rt2x00_has_cap_hw_crypto (struct rt2x00_dev*) ;
 int rt2x00crypto_key_to_cipher (struct ieee80211_key_conf*) ;

void rt2x00crypto_create_tx_descriptor(struct rt2x00_dev *rt2x00dev,
           struct sk_buff *skb,
           struct txentry_desc *txdesc)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_key_conf *hw_key = tx_info->control.hw_key;

 if (!rt2x00_has_cap_hw_crypto(rt2x00dev) || !hw_key)
  return;

 __set_bit(ENTRY_TXD_ENCRYPT, &txdesc->flags);

 txdesc->cipher = rt2x00crypto_key_to_cipher(hw_key);

 if (hw_key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
  __set_bit(ENTRY_TXD_ENCRYPT_PAIRWISE, &txdesc->flags);

 txdesc->key_idx = hw_key->hw_key_idx;
 txdesc->iv_offset = txdesc->header_length;
 txdesc->iv_len = hw_key->iv_len;

 if (!(hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV))
  __set_bit(ENTRY_TXD_ENCRYPT_IV, &txdesc->flags);

 if (!(hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_MMIC))
  __set_bit(ENTRY_TXD_ENCRYPT_MMIC, &txdesc->flags);
}
