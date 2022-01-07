
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_wcid {int hw_key_idx; int idx; } ;
struct mt76_vif {int idx; struct mt76_wcid group_wcid; } ;
struct mt76_sta {struct mt76_wcid wcid; } ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int keyidx; int cipher; int hw_key_idx; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int EOPNOTSUPP ;
 int SET_KEY ;




 int mt76_mac_shared_key_setup (struct mt7601u_dev*,int ,int,struct ieee80211_key_conf*) ;
 int mt76_mac_wcid_set_key (struct mt7601u_dev*,int ,struct ieee80211_key_conf*) ;

__attribute__((used)) static int
mt7601u_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
  struct ieee80211_vif *vif, struct ieee80211_sta *sta,
  struct ieee80211_key_conf *key)
{
 struct mt7601u_dev *dev = hw->priv;
 struct mt76_vif *mvif = (struct mt76_vif *) vif->drv_priv;
 struct mt76_sta *msta = sta ? (struct mt76_sta *) sta->drv_priv : ((void*)0);
 struct mt76_wcid *wcid = msta ? &msta->wcid : &mvif->group_wcid;
 int idx = key->keyidx;
 int ret;


 switch (key->cipher) {
 case 128:
 case 129:
 case 130:
 case 131:
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (cmd == SET_KEY) {
  key->hw_key_idx = wcid->idx;
  wcid->hw_key_idx = idx;
 } else {
  if (idx == wcid->hw_key_idx)
   wcid->hw_key_idx = -1;

  key = ((void*)0);
 }

 if (!msta) {
  if (key || wcid->hw_key_idx == idx) {
   ret = mt76_mac_wcid_set_key(dev, wcid->idx, key);
   if (ret)
    return ret;
  }

  return mt76_mac_shared_key_setup(dev, mvif->idx, idx, key);
 }

 return mt76_mac_wcid_set_key(dev, msta->wcid.idx, key);
}
