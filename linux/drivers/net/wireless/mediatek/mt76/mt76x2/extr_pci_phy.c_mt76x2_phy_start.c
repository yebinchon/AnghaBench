
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_RF_BBP_CR ;
 int mt76x02_mcu_set_radio_state (struct mt76x02_dev*,int) ;
 int mt76x2_mcu_load_cr (struct mt76x02_dev*,int ,int ,int ) ;

int mt76x2_phy_start(struct mt76x02_dev *dev)
{
 int ret;

 ret = mt76x02_mcu_set_radio_state(dev, 1);
 if (ret)
  return ret;

 mt76x2_mcu_load_cr(dev, MT_RF_BBP_CR, 0, 0);

 return ret;
}
