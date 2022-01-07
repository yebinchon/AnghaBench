
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pre_tbtt_tasklet; int mutex; int state; } ;
struct TYPE_4__ {int dfs_tasklet; } ;
struct mt76x02_dev {TYPE_2__ mt76; TYPE_1__ dfs_pd; int cal_work; } ;
struct cfg80211_chan_def {int dummy; } ;


 int MT76_RESET ;
 int MT_CH_BUSY ;
 int MT_CH_IDLE ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_set_channel (TYPE_2__*) ;
 int mt76_txq_schedule_all (TYPE_2__*) ;
 int mt76x02_dfs_init_params (struct mt76x02_dev*) ;
 int mt76x2_mac_resume (struct mt76x02_dev*) ;
 int mt76x2_mac_stop (struct mt76x02_dev*,int) ;
 int mt76x2_phy_set_channel (struct mt76x02_dev*,struct cfg80211_chan_def*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int
mt76x2_set_channel(struct mt76x02_dev *dev, struct cfg80211_chan_def *chandef)
{
 int ret;

 cancel_delayed_work_sync(&dev->cal_work);
 tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
 tasklet_disable(&dev->dfs_pd.dfs_tasklet);

 mutex_lock(&dev->mt76.mutex);
 set_bit(MT76_RESET, &dev->mt76.state);

 mt76_set_channel(&dev->mt76);

 mt76x2_mac_stop(dev, 1);
 ret = mt76x2_phy_set_channel(dev, chandef);


 mt76_rr(dev, MT_CH_IDLE);
 mt76_rr(dev, MT_CH_BUSY);

 mt76x02_dfs_init_params(dev);

 mt76x2_mac_resume(dev);

 clear_bit(MT76_RESET, &dev->mt76.state);
 mutex_unlock(&dev->mt76.mutex);

 tasklet_enable(&dev->dfs_pd.dfs_tasklet);
 tasklet_enable(&dev->mt76.pre_tbtt_tasklet);

 mt76_txq_schedule_all(&dev->mt76);

 return ret;
}
