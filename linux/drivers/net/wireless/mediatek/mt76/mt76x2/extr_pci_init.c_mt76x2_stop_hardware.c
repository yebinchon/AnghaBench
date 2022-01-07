
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_work; } ;
struct mt76x02_dev {int wdt_work; TYPE_1__ mt76; int cal_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int mt76x02_mcu_set_radio_state (struct mt76x02_dev*,int) ;
 int mt76x2_mac_stop (struct mt76x02_dev*,int) ;

void mt76x2_stop_hardware(struct mt76x02_dev *dev)
{
 cancel_delayed_work_sync(&dev->cal_work);
 cancel_delayed_work_sync(&dev->mt76.mac_work);
 cancel_delayed_work_sync(&dev->wdt_work);
 mt76x02_mcu_set_radio_state(dev, 0);
 mt76x2_mac_stop(dev, 0);
}
