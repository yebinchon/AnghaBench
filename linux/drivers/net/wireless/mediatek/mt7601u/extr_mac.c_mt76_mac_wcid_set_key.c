
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_key_conf {int keyidx; int flags; } ;
typedef int key_data ;
typedef int iv_data ;
typedef enum mt76_cipher_type { ____Placeholder_mt76_cipher_type } mt76_cipher_type ;


 int EINVAL ;
 int FIELD_PREP (int,int) ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int MT_CIPHER_NONE ;
 int MT_CIPHER_TKIP ;
 int MT_WCID_ATTR (int) ;
 int MT_WCID_ATTR_PAIRWISE ;
 int MT_WCID_ATTR_PKEY_MODE ;
 int MT_WCID_ATTR_PKEY_MODE_EXT ;
 int MT_WCID_IV (int) ;
 int MT_WCID_KEY (int) ;
 int memset (int*,int ,int) ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mt7601u_wr_copy (struct mt7601u_dev*,int ,int*,int) ;
 int mt76_mac_get_key_info (struct ieee80211_key_conf*,int*) ;
 int trace_set_key (struct mt7601u_dev*,int) ;

int mt76_mac_wcid_set_key(struct mt7601u_dev *dev, u8 idx,
     struct ieee80211_key_conf *key)
{
 enum mt76_cipher_type cipher;
 u8 key_data[32];
 u8 iv_data[8];
 u32 val;

 cipher = mt76_mac_get_key_info(key, key_data);
 if (cipher == MT_CIPHER_NONE && key)
  return -EINVAL;

 trace_set_key(dev, idx);

 mt7601u_wr_copy(dev, MT_WCID_KEY(idx), key_data, sizeof(key_data));

 memset(iv_data, 0, sizeof(iv_data));
 if (key) {
  iv_data[3] = key->keyidx << 6;
  if (cipher >= MT_CIPHER_TKIP) {



   iv_data[0] |= 1;
   iv_data[3] |= 0x20;
  }
 }
 mt7601u_wr_copy(dev, MT_WCID_IV(idx), iv_data, sizeof(iv_data));

 val = mt7601u_rr(dev, MT_WCID_ATTR(idx));
 val &= ~MT_WCID_ATTR_PKEY_MODE & ~MT_WCID_ATTR_PKEY_MODE_EXT;
 val |= FIELD_PREP(MT_WCID_ATTR_PKEY_MODE, cipher & 7) |
        FIELD_PREP(MT_WCID_ATTR_PKEY_MODE_EXT, cipher >> 3);
 val &= ~MT_WCID_ATTR_PAIRWISE;
 val |= MT_WCID_ATTR_PAIRWISE *
  !!(key && key->flags & IEEE80211_KEY_FLAG_PAIRWISE);
 mt7601u_wr(dev, MT_WCID_ATTR(idx), val);

 return 0;
}
