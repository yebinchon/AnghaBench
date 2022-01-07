
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int curr_temp; } ;


 int MCU_CAL_DPD ;
 int mt7601u_mcu_calibrate (struct mt7601u_dev*,int ,int ) ;
 int mt7601u_rxdc_cal (struct mt7601u_dev*) ;

void mt7601u_phy_recalibrate_after_assoc(struct mt7601u_dev *dev)
{
 mt7601u_mcu_calibrate(dev, MCU_CAL_DPD, dev->curr_temp);

 mt7601u_rxdc_cal(dev);
}
