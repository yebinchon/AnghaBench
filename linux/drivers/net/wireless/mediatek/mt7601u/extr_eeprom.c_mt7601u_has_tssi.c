
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mt7601u_dev {int dummy; } ;


 int MT_EE_NIC_CONF_1 ;
 int MT_EE_NIC_CONF_1_TX_ALC_EN ;
 int get_unaligned_le16 (int *) ;

__attribute__((used)) static bool
mt7601u_has_tssi(struct mt7601u_dev *dev, u8 *eeprom)
{
 u16 nic_conf1 = get_unaligned_le16(eeprom + MT_EE_NIC_CONF_1);

 return ~nic_conf1 && (nic_conf1 & MT_EE_NIC_CONF_1_TX_ALC_EN);
}
