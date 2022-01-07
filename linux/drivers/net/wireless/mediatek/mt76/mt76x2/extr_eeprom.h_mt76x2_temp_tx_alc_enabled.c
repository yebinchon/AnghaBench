
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt76x02_dev {int dummy; } ;


 int BIT (int) ;
 int MT_EE_NIC_CONF_1 ;
 int MT_EE_NIC_CONF_1_TEMP_TX_ALC ;
 int MT_EE_TX_POWER_EXT_PA_5G ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;

__attribute__((used)) static inline bool
mt76x2_temp_tx_alc_enabled(struct mt76x02_dev *dev)
{
 u16 val;

 val = mt76x02_eeprom_get(dev, MT_EE_TX_POWER_EXT_PA_5G);
 if (!(val & BIT(15)))
  return 0;

 return mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_1) &
        MT_EE_NIC_CONF_1_TEMP_TX_ALC;
}
