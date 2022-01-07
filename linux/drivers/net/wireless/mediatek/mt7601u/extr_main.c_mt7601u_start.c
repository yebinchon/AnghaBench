
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int mutex; int cal_work; int hw; int mac_work; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int MT_CALIBRATE_INTERVAL ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int mt7601u_mac_start (struct mt7601u_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mt7601u_start(struct ieee80211_hw *hw)
{
 struct mt7601u_dev *dev = hw->priv;
 int ret;

 mutex_lock(&dev->mutex);

 ret = mt7601u_mac_start(dev);
 if (ret)
  goto out;

 ieee80211_queue_delayed_work(dev->hw, &dev->mac_work,
         MT_CALIBRATE_INTERVAL);
 ieee80211_queue_delayed_work(dev->hw, &dev->cal_work,
         MT_CALIBRATE_INTERVAL);
out:
 mutex_unlock(&dev->mutex);
 return ret;
}
