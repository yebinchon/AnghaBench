
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76x02_dev {int dummy; } ;
typedef enum mt76x2_cal_channel_group { ____Placeholder_mt76x2_cal_channel_group } mt76x2_cal_channel_group ;







 int MT_EE_RF_5G_GRP0_1_RX_HIGH_GAIN ;
 int MT_EE_RF_5G_GRP2_3_RX_HIGH_GAIN ;
 int MT_EE_RF_5G_GRP4_5_RX_HIGH_GAIN ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x2_get_cal_channel_group (int) ;

__attribute__((used)) static u8
mt76x2_get_5g_rx_gain(struct mt76x02_dev *dev, u8 channel)
{
 enum mt76x2_cal_channel_group group;

 group = mt76x2_get_cal_channel_group(channel);
 switch (group) {
 case 132:
  return mt76x02_eeprom_get(dev,
       MT_EE_RF_5G_GRP0_1_RX_HIGH_GAIN);
 case 131:
  return mt76x02_eeprom_get(dev,
       MT_EE_RF_5G_GRP0_1_RX_HIGH_GAIN) >> 8;
 case 130:
  return mt76x02_eeprom_get(dev,
       MT_EE_RF_5G_GRP2_3_RX_HIGH_GAIN);
 case 129:
  return mt76x02_eeprom_get(dev,
       MT_EE_RF_5G_GRP2_3_RX_HIGH_GAIN) >> 8;
 case 128:
  return mt76x02_eeprom_get(dev,
       MT_EE_RF_5G_GRP4_5_RX_HIGH_GAIN);
 default:
  return mt76x02_eeprom_get(dev,
       MT_EE_RF_5G_GRP4_5_RX_HIGH_GAIN) >> 8;
 }
}
