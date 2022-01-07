
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int mutex; int mac_work; int cal_work; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int cancel_delayed_work_sync (int *) ;
 int mt7601u_mac_stop (struct mt7601u_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mt7601u_stop(struct ieee80211_hw *hw)
{
 struct mt7601u_dev *dev = hw->priv;

 mutex_lock(&dev->mutex);

 cancel_delayed_work_sync(&dev->cal_work);
 cancel_delayed_work_sync(&dev->mac_work);
 mt7601u_mac_stop(dev);

 mutex_unlock(&dev->mutex);
}
