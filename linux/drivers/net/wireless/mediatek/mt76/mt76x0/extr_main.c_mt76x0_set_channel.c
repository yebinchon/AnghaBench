
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dfs_tasklet; } ;
struct mt76x02_dev {int mt76; TYPE_1__ dfs_pd; int cal_work; } ;
struct cfg80211_chan_def {int dummy; } ;


 int MT_CH_BUSY ;
 int MT_CH_IDLE ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ mt76_is_mmio (struct mt76x02_dev*) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_set_channel (int *) ;
 int mt76_txq_schedule_all (int *) ;
 int mt76x02_dfs_init_params (struct mt76x02_dev*) ;
 int mt76x02_edcca_init (struct mt76x02_dev*) ;
 int mt76x02_pre_tbtt_enable (struct mt76x02_dev*,int) ;
 int mt76x0_phy_set_channel (struct mt76x02_dev*,struct cfg80211_chan_def*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void
mt76x0_set_channel(struct mt76x02_dev *dev, struct cfg80211_chan_def *chandef)
{
 cancel_delayed_work_sync(&dev->cal_work);
 mt76x02_pre_tbtt_enable(dev, 0);
 if (mt76_is_mmio(dev))
  tasklet_disable(&dev->dfs_pd.dfs_tasklet);

 mt76_set_channel(&dev->mt76);
 mt76x0_phy_set_channel(dev, chandef);


 mt76_rr(dev, MT_CH_IDLE);
 mt76_rr(dev, MT_CH_BUSY);

 mt76x02_edcca_init(dev);

 if (mt76_is_mmio(dev)) {
  mt76x02_dfs_init_params(dev);
  tasklet_enable(&dev->dfs_pd.dfs_tasklet);
 }
 mt76x02_pre_tbtt_enable(dev, 1);

 mt76_txq_schedule_all(&dev->mt76);
}
