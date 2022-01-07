
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_vif {int idx; } ;
struct TYPE_2__ {int idx; int hw_key_idx; } ;
struct mt76_sta {TYPE_1__ wcid; } ;
struct mt7601u_dev {int mutex; int * wcid; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int ENOSPC ;
 int MT_WCID_DROP (int) ;
 int MT_WCID_DROP_MASK (int) ;
 int mt7601u_mac_set_ampdu_factor (struct mt7601u_dev*) ;
 int mt7601u_mac_wcid_setup (struct mt7601u_dev*,int,int ,int ) ;
 int mt76_clear (struct mt7601u_dev*,int ,int ) ;
 int mt76_wcid_alloc (struct mt7601u_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,TYPE_1__*) ;

__attribute__((used)) static int
mt7601u_sta_add(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
  struct ieee80211_sta *sta)
{
 struct mt7601u_dev *dev = hw->priv;
 struct mt76_sta *msta = (struct mt76_sta *) sta->drv_priv;
 struct mt76_vif *mvif = (struct mt76_vif *) vif->drv_priv;
 int ret = 0;
 int idx = 0;

 mutex_lock(&dev->mutex);

 idx = mt76_wcid_alloc(dev);
 if (idx < 0) {
  ret = -ENOSPC;
  goto out;
 }

 msta->wcid.idx = idx;
 msta->wcid.hw_key_idx = -1;
 mt7601u_mac_wcid_setup(dev, idx, mvif->idx, sta->addr);
 mt76_clear(dev, MT_WCID_DROP(idx), MT_WCID_DROP_MASK(idx));
 rcu_assign_pointer(dev->wcid[idx], &msta->wcid);
 mt7601u_mac_set_ampdu_factor(dev);

out:
 mutex_unlock(&dev->mutex);

 return ret;
}
