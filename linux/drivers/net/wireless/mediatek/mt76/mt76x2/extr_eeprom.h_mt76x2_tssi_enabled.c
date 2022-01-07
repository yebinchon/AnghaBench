
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_EE_NIC_CONF_1 ;
 int MT_EE_NIC_CONF_1_TX_ALC_EN ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x2_temp_tx_alc_enabled (struct mt76x02_dev*) ;

__attribute__((used)) static inline bool
mt76x2_tssi_enabled(struct mt76x02_dev *dev)
{
 return !mt76x2_temp_tx_alc_enabled(dev) &&
        (mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_1) &
  MT_EE_NIC_CONF_1_TX_ALC_EN);
}
