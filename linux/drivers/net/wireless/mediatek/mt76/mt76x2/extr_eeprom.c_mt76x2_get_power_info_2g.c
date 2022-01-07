
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct mt76x2_tx_power_info {int target_power; TYPE_1__* chain; } ;
struct mt76x02_dev {int dummy; } ;
struct ieee80211_channel {int hw_value; } ;
typedef int data ;
struct TYPE_2__ {int delta; void* target_power; void* tssi_offset; void* tssi_slope; } ;


 int MT_EE_RF_2G_TSSI_OFF_TXPOWER ;
 int mt76x02_eeprom_copy (struct mt76x02_dev*,int,void**,int) ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x02_sign_extend_optional (void*,int) ;

__attribute__((used)) static void
mt76x2_get_power_info_2g(struct mt76x02_dev *dev,
    struct mt76x2_tx_power_info *t,
    struct ieee80211_channel *chan,
    int chain, int offset)
{
 int channel = chan->hw_value;
 int delta_idx;
 u8 data[6];
 u16 val;

 if (channel < 6)
  delta_idx = 3;
 else if (channel < 11)
  delta_idx = 4;
 else
  delta_idx = 5;

 mt76x02_eeprom_copy(dev, offset, data, sizeof(data));

 t->chain[chain].tssi_slope = data[0];
 t->chain[chain].tssi_offset = data[1];
 t->chain[chain].target_power = data[2];
 t->chain[chain].delta =
  mt76x02_sign_extend_optional(data[delta_idx], 7);

 val = mt76x02_eeprom_get(dev, MT_EE_RF_2G_TSSI_OFF_TXPOWER);
 t->target_power = val >> 8;
}
