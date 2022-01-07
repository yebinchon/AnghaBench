
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int mac_work; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int MT76_STATE_RUNNING ;
 int MT_MAC_WORK_INTERVAL ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int mt76_hw (struct mt76x02_dev*) ;
 int mt76x2u_mac_start (struct mt76x02_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mt76x2u_start(struct ieee80211_hw *hw)
{
 struct mt76x02_dev *dev = hw->priv;
 int ret;

 ret = mt76x2u_mac_start(dev);
 if (ret)
  return ret;

 ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
         MT_MAC_WORK_INTERVAL);
 set_bit(MT76_STATE_RUNNING, &dev->mt76.state);

 return 0;
}
