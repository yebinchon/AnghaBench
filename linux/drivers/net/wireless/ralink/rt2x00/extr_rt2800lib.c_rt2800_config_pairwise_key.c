
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00lib_crypto {scalar_t__ cmd; scalar_t__ wcid; int rx_mic; int tx_mic; int key; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ hw_key_idx; } ;
struct hw_key_entry {int rx_mic; int tx_mic; int key; } ;
typedef int key_entry ;


 int ENOSPC ;
 int PAIRWISE_KEY_ENTRY (scalar_t__) ;
 scalar_t__ SET_KEY ;
 scalar_t__ WCID_END ;
 int memcpy (int ,int ,int) ;
 int rt2800_config_wcid_attr_cipher (struct rt2x00_dev*,struct rt2x00lib_crypto*,struct ieee80211_key_conf*) ;
 int rt2800_register_multiwrite (struct rt2x00_dev*,int ,struct hw_key_entry*,int) ;

int rt2800_config_pairwise_key(struct rt2x00_dev *rt2x00dev,
          struct rt2x00lib_crypto *crypto,
          struct ieee80211_key_conf *key)
{
 struct hw_key_entry key_entry;
 u32 offset;

 if (crypto->cmd == SET_KEY) {




  if (crypto->wcid > WCID_END)
   return -ENOSPC;
  key->hw_key_idx = crypto->wcid;

  memcpy(key_entry.key, crypto->key,
         sizeof(key_entry.key));
  memcpy(key_entry.tx_mic, crypto->tx_mic,
         sizeof(key_entry.tx_mic));
  memcpy(key_entry.rx_mic, crypto->rx_mic,
         sizeof(key_entry.rx_mic));

  offset = PAIRWISE_KEY_ENTRY(key->hw_key_idx);
  rt2800_register_multiwrite(rt2x00dev, offset,
           &key_entry, sizeof(key_entry));
 }




 rt2800_config_wcid_attr_cipher(rt2x00dev, crypto, key);

 return 0;
}
