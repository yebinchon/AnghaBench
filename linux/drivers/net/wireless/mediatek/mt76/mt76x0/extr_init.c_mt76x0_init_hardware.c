
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rxfilter; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int EIO ;
 int ETIMEDOUT ;
 int MT_RX_FILTR_CFG ;
 int Q_SELECT ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76x02_mac_shared_key_setup (struct mt76x02_dev*,int,int,int *) ;
 int mt76x02_mac_wcid_setup (struct mt76x02_dev*,int,int ,int *) ;
 int mt76x02_mcu_function_select (struct mt76x02_dev*,int ,int) ;
 int mt76x02_wait_for_mac (TYPE_1__*) ;
 int mt76x02_wait_for_txrx_idle (TYPE_1__*) ;
 int mt76x02_wait_for_wpdma (TYPE_1__*,int) ;
 int mt76x0_eeprom_init (struct mt76x02_dev*) ;
 int mt76x0_init_bbp (struct mt76x02_dev*) ;
 int mt76x0_init_mac_registers (struct mt76x02_dev*) ;
 int mt76x0_phy_init (struct mt76x02_dev*) ;
 int mt76x0_reset_counters (struct mt76x02_dev*) ;
 int mt76x0_reset_csr_bbp (struct mt76x02_dev*) ;

int mt76x0_init_hardware(struct mt76x02_dev *dev)
{
 int ret, i, k;

 if (!mt76x02_wait_for_wpdma(&dev->mt76, 1000))
  return -EIO;


 if (!mt76x02_wait_for_mac(&dev->mt76))
  return -ETIMEDOUT;

 mt76x0_reset_csr_bbp(dev);
 ret = mt76x02_mcu_function_select(dev, Q_SELECT, 1);
 if (ret)
  return ret;

 mt76x0_init_mac_registers(dev);

 if (!mt76x02_wait_for_txrx_idle(&dev->mt76))
  return -EIO;

 ret = mt76x0_init_bbp(dev);
 if (ret)
  return ret;

 dev->mt76.rxfilter = mt76_rr(dev, MT_RX_FILTR_CFG);

 for (i = 0; i < 16; i++)
  for (k = 0; k < 4; k++)
   mt76x02_mac_shared_key_setup(dev, i, k, ((void*)0));

 for (i = 0; i < 256; i++)
  mt76x02_mac_wcid_setup(dev, i, 0, ((void*)0));

 mt76x0_reset_counters(dev);

 ret = mt76x0_eeprom_init(dev);
 if (ret)
  return ret;

 mt76x0_phy_init(dev);

 return 0;
}
