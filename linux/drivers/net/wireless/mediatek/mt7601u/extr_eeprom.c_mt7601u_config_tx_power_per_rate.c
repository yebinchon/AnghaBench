
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7601u_dev {int dummy; } ;
typedef int s8 ;


 int MT_EE_TX_POWER_BYRATE (int) ;
 size_t MT_EE_TX_POWER_DELTA_BW40 ;
 scalar_t__ MT_TX_PWR_CFG_0 ;
 int get_delta (int ) ;
 int get_unaligned_le32 (int *) ;
 int mt7601u_extra_power_over_mac (struct mt7601u_dev*) ;
 int mt7601u_save_power_rate (struct mt7601u_dev*,int ,int,int) ;
 int mt7601u_wr (struct mt7601u_dev*,scalar_t__,int) ;

__attribute__((used)) static void
mt7601u_config_tx_power_per_rate(struct mt7601u_dev *dev, u8 *eeprom)
{
 u32 val;
 s8 bw40_delta;
 int i;

 bw40_delta = get_delta(eeprom[MT_EE_TX_POWER_DELTA_BW40]);

 for (i = 0; i < 5; i++) {
  val = get_unaligned_le32(eeprom + MT_EE_TX_POWER_BYRATE(i));

  mt7601u_save_power_rate(dev, bw40_delta, val, i);

  if (~val)
   mt7601u_wr(dev, MT_TX_PWR_CFG_0 + i * 4, val);
 }

 mt7601u_extra_power_over_mac(dev);
}
