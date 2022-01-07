
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT76_STATE_INITIALIZED ;
 int MT_RX_FILTR_CFG ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76x02_dma_disable (struct mt76x02_dev*) ;
 int mt76x02_dma_init (struct mt76x02_dev*) ;
 int mt76x2_eeprom_init (struct mt76x02_dev*) ;
 int mt76x2_mac_reset (struct mt76x02_dev*,int) ;
 int mt76x2_mac_start (struct mt76x02_dev*) ;
 int mt76x2_mac_stop (struct mt76x02_dev*,int) ;
 int mt76x2_mcu_init (struct mt76x02_dev*) ;
 int mt76x2_power_on (struct mt76x02_dev*) ;
 int mt76x2_reset_wlan (struct mt76x02_dev*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mt76x2_init_hardware(struct mt76x02_dev *dev)
{
 int ret;

 mt76x02_dma_disable(dev);
 mt76x2_reset_wlan(dev, 1);
 mt76x2_power_on(dev);

 ret = mt76x2_eeprom_init(dev);
 if (ret)
  return ret;

 ret = mt76x2_mac_reset(dev, 1);
 if (ret)
  return ret;

 dev->mt76.rxfilter = mt76_rr(dev, MT_RX_FILTR_CFG);

 ret = mt76x02_dma_init(dev);
 if (ret)
  return ret;

 set_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);
 ret = mt76x2_mac_start(dev);
 if (ret)
  return ret;

 ret = mt76x2_mcu_init(dev);
 if (ret)
  return ret;

 mt76x2_mac_stop(dev, 0);

 return 0;
}
