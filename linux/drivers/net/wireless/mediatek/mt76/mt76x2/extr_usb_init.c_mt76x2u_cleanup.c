
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int mt76; } ;


 int mt76u_queues_deinit (int *) ;
 int mt76x02_mcu_set_radio_state (struct mt76x02_dev*,int) ;
 int mt76x2u_stop_hw (struct mt76x02_dev*) ;

void mt76x2u_cleanup(struct mt76x02_dev *dev)
{
 mt76x02_mcu_set_radio_state(dev, 0);
 mt76x2u_stop_hw(dev);
 mt76u_queues_deinit(&dev->mt76);
}
