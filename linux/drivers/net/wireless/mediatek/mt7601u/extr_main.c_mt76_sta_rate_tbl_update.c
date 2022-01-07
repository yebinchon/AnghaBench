
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_sta {int wcid; } ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_rate {int flags; int idx; } ;
struct ieee80211_sta_rates {TYPE_1__* rate; } ;
struct ieee80211_sta {int rates; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct TYPE_2__ {int flags; int idx; } ;


 int mt76_mac_wcid_set_rate (struct mt7601u_dev*,int *,struct ieee80211_tx_rate*) ;
 struct ieee80211_sta_rates* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
mt76_sta_rate_tbl_update(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct mt7601u_dev *dev = hw->priv;
 struct mt76_sta *msta = (struct mt76_sta *) sta->drv_priv;
 struct ieee80211_sta_rates *rates;
 struct ieee80211_tx_rate rate = {};

 rcu_read_lock();
 rates = rcu_dereference(sta->rates);

 if (!rates)
  goto out;

 rate.idx = rates->rate[0].idx;
 rate.flags = rates->rate[0].flags;
 mt76_mac_wcid_set_rate(dev, &msta->wcid, &rate);

out:
 rcu_read_unlock();
}
