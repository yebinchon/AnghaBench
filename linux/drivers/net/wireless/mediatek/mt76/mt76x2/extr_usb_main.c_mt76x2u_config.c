
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int txpower_conf; int mutex; int state; int rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct TYPE_4__ {int flags; int power_level; int chandef; } ;
struct ieee80211_hw {TYPE_2__ conf; struct mt76x02_dev* priv; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_MONITOR ;
 int MT76_STATE_RUNNING ;
 int MT_RX_FILTR_CFG ;
 int MT_RX_FILTR_CFG_PROMISC ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int mt76_wr (struct mt76x02_dev*,int ,int ) ;
 int mt76x2_phy_set_txpower (struct mt76x02_dev*) ;
 int mt76x2u_set_channel (struct mt76x02_dev*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
mt76x2u_config(struct ieee80211_hw *hw, u32 changed)
{
 struct mt76x02_dev *dev = hw->priv;
 int err = 0;

 mutex_lock(&dev->mt76.mutex);

 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
  if (!(hw->conf.flags & IEEE80211_CONF_MONITOR))
   dev->mt76.rxfilter |= MT_RX_FILTR_CFG_PROMISC;
  else
   dev->mt76.rxfilter &= ~MT_RX_FILTR_CFG_PROMISC;
  mt76_wr(dev, MT_RX_FILTR_CFG, dev->mt76.rxfilter);
 }

 if (changed & IEEE80211_CONF_CHANGE_POWER) {
  dev->mt76.txpower_conf = hw->conf.power_level * 2;


  dev->mt76.txpower_conf -= 6;

  if (test_bit(MT76_STATE_RUNNING, &dev->mt76.state))
   mt76x2_phy_set_txpower(dev);
 }

 mutex_unlock(&dev->mt76.mutex);

 if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
  ieee80211_stop_queues(hw);
  err = mt76x2u_set_channel(dev, &hw->conf.chandef);
  ieee80211_wake_queues(hw);
 }

 return err;
}
