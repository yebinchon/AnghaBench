
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct mac_iveiv_entry {int * iv; } ;
struct TYPE_2__ {int iv32; int iv16; } ;
struct ieee80211_key_seq {TYPE_1__ tkip; } ;
struct ieee80211_key_conf {scalar_t__ cipher; int hw_key_idx; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
typedef int iveiv_entry ;


 int MAC_IVEIV_ENTRY (int ) ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int memcpy (int *,int *,int) ;
 int rt2800_register_multiread (struct rt2x00_dev*,int ,struct mac_iveiv_entry*,int) ;

void rt2800_get_key_seq(struct ieee80211_hw *hw,
   struct ieee80211_key_conf *key,
   struct ieee80211_key_seq *seq)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct mac_iveiv_entry iveiv_entry;
 u32 offset;

 if (key->cipher != WLAN_CIPHER_SUITE_TKIP)
  return;

 offset = MAC_IVEIV_ENTRY(key->hw_key_idx);
 rt2800_register_multiread(rt2x00dev, offset,
          &iveiv_entry, sizeof(iveiv_entry));

 memcpy(&seq->tkip.iv16, &iveiv_entry.iv[0], 2);
 memcpy(&seq->tkip.iv32, &iveiv_entry.iv[4], 4);
}
