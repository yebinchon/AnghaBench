
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; int cal_work; } ;
struct cfg80211_chan_def {int dummy; } ;


 int MT76_RESET ;
 int MT_CH_BUSY ;
 int MT_CH_IDLE ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_set_channel (TYPE_1__*) ;
 int mt76_txq_schedule_all (TYPE_1__*) ;
 int mt76x02_pre_tbtt_enable (struct mt76x02_dev*,int) ;
 int mt76x2_mac_resume (struct mt76x02_dev*) ;
 int mt76x2_mac_stop (struct mt76x02_dev*,int) ;
 int mt76x2u_phy_set_channel (struct mt76x02_dev*,struct cfg80211_chan_def*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
mt76x2u_set_channel(struct mt76x02_dev *dev,
      struct cfg80211_chan_def *chandef)
{
 int err;

 cancel_delayed_work_sync(&dev->cal_work);
 mt76x02_pre_tbtt_enable(dev, 0);

 mutex_lock(&dev->mt76.mutex);
 set_bit(MT76_RESET, &dev->mt76.state);

 mt76_set_channel(&dev->mt76);

 mt76x2_mac_stop(dev, 0);

 err = mt76x2u_phy_set_channel(dev, chandef);


 mt76_rr(dev, MT_CH_IDLE);
 mt76_rr(dev, MT_CH_BUSY);

 mt76x2_mac_resume(dev);

 clear_bit(MT76_RESET, &dev->mt76.state);
 mutex_unlock(&dev->mt76.mutex);

 mt76x02_pre_tbtt_enable(dev, 1);
 mt76_txq_schedule_all(&dev->mt76);

 return err;
}
