
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; scalar_t__ enabled; } ;
struct mt7601u_dev {TYPE_1__ freq_cal; int hw; int cal_work; int state; int hw_atomic_mutex; } ;
struct cfg80211_chan_def {int dummy; } ;


 int MT7601U_STATE_SCANNING ;
 int MT_CALIBRATE_INTERVAL ;
 int MT_FREQ_CAL_INIT_DELAY ;
 int __mt7601u_phy_set_channel (struct mt7601u_dev*,struct cfg80211_chan_def*) ;
 int cancel_delayed_work_sync (int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int mt7601u_phy_set_channel(struct mt7601u_dev *dev,
       struct cfg80211_chan_def *chandef)
{
 int ret;

 cancel_delayed_work_sync(&dev->cal_work);
 cancel_delayed_work_sync(&dev->freq_cal.work);

 mutex_lock(&dev->hw_atomic_mutex);
 ret = __mt7601u_phy_set_channel(dev, chandef);
 mutex_unlock(&dev->hw_atomic_mutex);
 if (ret)
  return ret;

 if (test_bit(MT7601U_STATE_SCANNING, &dev->state))
  return 0;

 ieee80211_queue_delayed_work(dev->hw, &dev->cal_work,
         MT_CALIBRATE_INTERVAL);
 if (dev->freq_cal.enabled)
  ieee80211_queue_delayed_work(dev->hw, &dev->freq_cal.work,
          MT_FREQ_CAL_INIT_DELAY);
 return 0;
}
