
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; scalar_t__ enabled; } ;
struct mt7601u_dev {TYPE_1__ freq_cal; int hw; int cal_work; int state; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;


 int MT7601U_STATE_SCANNING ;
 int MT_CALIBRATE_INTERVAL ;
 int MT_FREQ_CAL_INIT_DELAY ;
 int clear_bit (int ,int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int mt7601u_agc_restore (struct mt7601u_dev*) ;

__attribute__((used)) static void
mt7601u_sw_scan_complete(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct mt7601u_dev *dev = hw->priv;

 mt7601u_agc_restore(dev);
 clear_bit(MT7601U_STATE_SCANNING, &dev->state);

 ieee80211_queue_delayed_work(dev->hw, &dev->cal_work,
         MT_CALIBRATE_INTERVAL);
 if (dev->freq_cal.enabled)
  ieee80211_queue_delayed_work(dev->hw, &dev->freq_cal.work,
          MT_FREQ_CAL_INIT_DELAY);
}
