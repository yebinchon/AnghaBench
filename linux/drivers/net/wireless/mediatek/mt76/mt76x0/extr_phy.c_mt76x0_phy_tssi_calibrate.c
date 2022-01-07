
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt76x02_dev {int dummy; } ;
typedef int s8 ;
typedef int s16 ;


 int MT_TX_ALC_CFG_1 ;
 int MT_TX_ALC_CFG_1_TEMP_COMP ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int ) ;
 int mt76x0_phy_get_delta_power (struct mt76x02_dev*,int,int ,int ,int ) ;
 scalar_t__ mt76x0_phy_get_target_power (struct mt76x02_dev*,int,int*,int *,int *) ;
 scalar_t__ mt76x0_phy_tssi_adc_calibrate (struct mt76x02_dev*,int *,int*) ;

__attribute__((used)) static void mt76x0_phy_tssi_calibrate(struct mt76x02_dev *dev)
{
 s8 target_power, target_pa_power;
 u8 tssi_info[3], tx_mode;
 s16 ltssi;
 s8 val;

 if (mt76x0_phy_tssi_adc_calibrate(dev, &ltssi, tssi_info) < 0)
  return;

 tx_mode = tssi_info[0] & 0x7;
 if (mt76x0_phy_get_target_power(dev, tx_mode, tssi_info,
     &target_power, &target_pa_power) < 0)
  return;

 val = mt76x0_phy_get_delta_power(dev, tx_mode, target_power,
      target_pa_power, ltssi);
 mt76_rmw_field(dev, MT_TX_ALC_CFG_1, MT_TX_ALC_CFG_1_TEMP_COMP, val);
}
