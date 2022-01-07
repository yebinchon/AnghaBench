
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mt7601u_dev {int dev; TYPE_1__* ee; } ;
struct TYPE_2__ {int tssi_enabled; } ;


 int FIELD_GET (int ,int) ;
 int MT_EE_NIC_CONF_0 ;
 int MT_EE_NIC_CONF_0_RX_PATH ;
 int MT_EE_NIC_CONF_0_TX_PATH ;
 int MT_EE_NIC_CONF_1 ;
 int MT_EE_NIC_CONF_1_HW_RF_CTRL ;
 int MT_EE_NIC_CONF_1_TEMP_TX_ALC ;
 int dev_err (int ,char*) ;
 int field_valid (int) ;
 int get_unaligned_le16 (int *) ;
 scalar_t__ mt7601u_has_tssi (struct mt7601u_dev*,int *) ;

__attribute__((used)) static void
mt7601u_set_chip_cap(struct mt7601u_dev *dev, u8 *eeprom)
{
 u16 nic_conf0 = get_unaligned_le16(eeprom + MT_EE_NIC_CONF_0);
 u16 nic_conf1 = get_unaligned_le16(eeprom + MT_EE_NIC_CONF_1);

 if (!field_valid(nic_conf1 & 0xff))
  nic_conf1 &= 0xff00;

 dev->ee->tssi_enabled = mt7601u_has_tssi(dev, eeprom) &&
    !(nic_conf1 & MT_EE_NIC_CONF_1_TEMP_TX_ALC);

 if (nic_conf1 & MT_EE_NIC_CONF_1_HW_RF_CTRL)
  dev_err(dev->dev,
   "Error: this driver does not support HW RF ctrl\n");

 if (!field_valid(nic_conf0 >> 8))
  return;

 if (FIELD_GET(MT_EE_NIC_CONF_0_RX_PATH, nic_conf0) > 1 ||
     FIELD_GET(MT_EE_NIC_CONF_0_TX_PATH, nic_conf0) > 1)
  dev_err(dev->dev,
   "Error: device has more than 1 RX/TX stream!\n");
}
