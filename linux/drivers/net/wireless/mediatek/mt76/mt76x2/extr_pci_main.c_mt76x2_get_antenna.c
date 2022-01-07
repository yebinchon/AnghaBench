
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mutex; int antenna_mask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mt76x2_get_antenna(struct ieee80211_hw *hw, u32 *tx_ant,
         u32 *rx_ant)
{
 struct mt76x02_dev *dev = hw->priv;

 mutex_lock(&dev->mt76.mutex);
 *tx_ant = dev->mt76.antenna_mask;
 *rx_ant = dev->mt76.antenna_mask;
 mutex_unlock(&dev->mt76.mutex);

 return 0;
}
