
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt7601u_dev {int mutex; } ;
struct TYPE_2__ {int chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; struct mt7601u_dev* priv; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int mt7601u_phy_set_channel (struct mt7601u_dev*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mt7601u_config(struct ieee80211_hw *hw, u32 changed)
{
 struct mt7601u_dev *dev = hw->priv;
 int ret = 0;

 mutex_lock(&dev->mutex);

 if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
  ieee80211_stop_queues(hw);
  ret = mt7601u_phy_set_channel(dev, &hw->conf.chandef);
  ieee80211_wake_queues(hw);
 }

 mutex_unlock(&dev->mutex);

 return ret;
}
