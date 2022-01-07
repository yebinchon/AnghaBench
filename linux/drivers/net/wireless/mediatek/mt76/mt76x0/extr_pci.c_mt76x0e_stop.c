
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int MT76_STATE_RUNNING ;
 int clear_bit (int ,int *) ;
 int mt76x0e_stop_hw (struct mt76x02_dev*) ;

__attribute__((used)) static void mt76x0e_stop(struct ieee80211_hw *hw)
{
 struct mt76x02_dev *dev = hw->priv;

 clear_bit(MT76_STATE_RUNNING, &dev->mt76.state);
 mt76x0e_stop_hw(dev);
}
