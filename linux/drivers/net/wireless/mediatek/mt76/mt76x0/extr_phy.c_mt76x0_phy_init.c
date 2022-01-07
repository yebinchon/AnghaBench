
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int cal_work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int mt76x02_phy_set_rxpath (struct mt76x02_dev*) ;
 int mt76x02_phy_set_txdac (struct mt76x02_dev*) ;
 int mt76x0_phy_ant_select (struct mt76x02_dev*) ;
 int mt76x0_phy_calibration_work ;
 int mt76x0_phy_rf_init (struct mt76x02_dev*) ;

void mt76x0_phy_init(struct mt76x02_dev *dev)
{
 INIT_DELAYED_WORK(&dev->cal_work, mt76x0_phy_calibration_work);

 mt76x0_phy_ant_select(dev);
 mt76x0_phy_rf_init(dev);
 mt76x02_phy_set_rxpath(dev);
 mt76x02_phy_set_txdac(dev);
}
