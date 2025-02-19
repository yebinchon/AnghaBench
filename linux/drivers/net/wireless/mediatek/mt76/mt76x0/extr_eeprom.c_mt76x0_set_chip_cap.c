
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int has_2ghz; int has_5ghz; } ;
struct TYPE_4__ {int dev; TYPE_1__ cap; } ;
struct mt76x02_dev {TYPE_2__ mt76; scalar_t__ no_2ghz; } ;


 int FIELD_GET (int ,int) ;
 int MT_EE_NIC_CONF_0 ;
 int MT_EE_NIC_CONF_0_RX_PATH ;
 int MT_EE_NIC_CONF_0_TX_PATH ;
 int MT_EE_NIC_CONF_1 ;
 int MT_EE_NIC_CONF_1_HW_RF_CTRL ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 scalar_t__ is_mt7630 (struct mt76x02_dev*) ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x02_eeprom_parse_hw_cap (struct mt76x02_dev*) ;
 int mt76x02_field_valid (int) ;

__attribute__((used)) static void mt76x0_set_chip_cap(struct mt76x02_dev *dev)
{
 u16 nic_conf0 = mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_0);
 u16 nic_conf1 = mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_1);

 mt76x02_eeprom_parse_hw_cap(dev);
 dev_dbg(dev->mt76.dev, "2GHz %d 5GHz %d\n",
  dev->mt76.cap.has_2ghz, dev->mt76.cap.has_5ghz);

 if (dev->no_2ghz) {
  dev->mt76.cap.has_2ghz = 0;
  dev_dbg(dev->mt76.dev, "mask out 2GHz support\n");
 }

 if (is_mt7630(dev)) {
  dev->mt76.cap.has_5ghz = 0;
  dev_dbg(dev->mt76.dev, "mask out 5GHz support\n");
 }

 if (!mt76x02_field_valid(nic_conf1 & 0xff))
  nic_conf1 &= 0xff00;

 if (nic_conf1 & MT_EE_NIC_CONF_1_HW_RF_CTRL)
  dev_err(dev->mt76.dev,
   "driver does not support HW RF ctrl\n");

 if (!mt76x02_field_valid(nic_conf0 >> 8))
  return;

 if (FIELD_GET(MT_EE_NIC_CONF_0_RX_PATH, nic_conf0) > 1 ||
     FIELD_GET(MT_EE_NIC_CONF_0_TX_PATH, nic_conf0) > 1)
  dev_err(dev->mt76.dev, "invalid tx-rx stream\n");
}
