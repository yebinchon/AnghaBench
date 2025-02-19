
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * ht; int * vht; int * ofdm; int * cck; } ;
struct TYPE_4__ {TYPE_1__ rate_power; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
typedef int s8 ;


 int EINVAL ;
 int MT_TX_ALC_CFG_0 ;
 int MT_TX_ALC_CFG_0_CH_INIT_0 ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76x0_phy_get_rf_pa_mode (struct mt76x02_dev*,int,int) ;

__attribute__((used)) static int
mt76x0_phy_get_target_power(struct mt76x02_dev *dev, u8 tx_mode,
       u8 *info, s8 *target_power,
       s8 *target_pa_power)
{
 u8 tx_rate, cur_power;

 cur_power = mt76_rr(dev, MT_TX_ALC_CFG_0) & MT_TX_ALC_CFG_0_CH_INIT_0;
 switch (tx_mode) {
 case 0:

  tx_rate = (info[0] & 0x60) >> 5;
  if (tx_rate > 3)
   return -EINVAL;

  *target_power = cur_power + dev->mt76.rate_power.cck[tx_rate];
  *target_pa_power = mt76x0_phy_get_rf_pa_mode(dev, 0, tx_rate);
  break;
 case 1: {
  u8 index;


  tx_rate = (info[0] & 0xf0) >> 4;
  switch (tx_rate) {
  case 0xb:
   index = 0;
   break;
  case 0xf:
   index = 1;
   break;
  case 0xa:
   index = 2;
   break;
  case 0xe:
   index = 3;
   break;
  case 0x9:
   index = 4;
   break;
  case 0xd:
   index = 5;
   break;
  case 0x8:
   index = 6;
   break;
  case 0xc:
   index = 7;
   break;
  default:
   return -EINVAL;
  }

  *target_power = cur_power + dev->mt76.rate_power.ofdm[index];
  *target_pa_power = mt76x0_phy_get_rf_pa_mode(dev, 0, index + 4);
  break;
 }
 case 4:

  tx_rate = info[1] & 0xf;
  if (tx_rate > 9)
   return -EINVAL;

  *target_power = cur_power + dev->mt76.rate_power.vht[tx_rate];
  *target_pa_power = mt76x0_phy_get_rf_pa_mode(dev, 1, tx_rate);
  break;
 default:

  tx_rate = info[1] & 0x7f;
  if (tx_rate > 9)
   return -EINVAL;

  *target_power = cur_power + dev->mt76.rate_power.ht[tx_rate];
  *target_pa_power = mt76x0_phy_get_rf_pa_mode(dev, 1, tx_rate);
  break;
 }

 return 0;
}
