
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int* rf_pa_mode; } ;
typedef int s16 ;





__attribute__((used)) static s16
mt7601u_phy_rf_pa_mode_val(struct mt7601u_dev *dev, int phy_mode, int tx_rate)
{
 static const s16 decode_tb[] = { 0, 8847, -5734, -5734 };
 u32 reg;

 switch (phy_mode) {
 case 128:
  tx_rate += 4;

 case 129:
  reg = dev->rf_pa_mode[0];
  break;
 default:
  reg = dev->rf_pa_mode[1];
  break;
 }

 return decode_tb[(reg >> (tx_rate * 2)) & 0x3];
}
