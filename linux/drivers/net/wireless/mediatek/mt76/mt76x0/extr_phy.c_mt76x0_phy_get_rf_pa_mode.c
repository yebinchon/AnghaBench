
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int MT_RF_PA_MODE_CFG0 ;
 int MT_RF_PA_MODE_CFG1 ;
 int mt76_rr (struct mt76x02_dev*,int) ;

__attribute__((used)) static u8 mt76x0_phy_get_rf_pa_mode(struct mt76x02_dev *dev,
        int index, u8 tx_rate)
{
 u32 val, reg;

 reg = (index == 1) ? MT_RF_PA_MODE_CFG1 : MT_RF_PA_MODE_CFG0;
 val = mt76_rr(dev, reg);
 return (val & (3 << (tx_rate * 2))) >> (tx_rate * 2);
}
