
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int mt76; } ;


 int ETIMEDOUT ;
 int FIELD_PREP (int ,int) ;
 int MT_CH_TIME_CFG ;
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ;
 int MT_CH_TIME_CFG_NAV_AS_BUSY ;
 int MT_CH_TIME_CFG_RX_AS_BUSY ;
 int MT_CH_TIME_CFG_TIMER_EN ;
 int MT_CH_TIME_CFG_TX_AS_BUSY ;
 int MT_TXOP_CTRL_CFG ;
 int MT_TXOP_EXT_CCA_DLY ;
 int MT_TXOP_TRUN_EN ;
 int MT_US_CYC_CFG ;
 int MT_US_CYC_CNT ;
 int mt76_rmw (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_wait_for_mac (int *) ;
 int mt76x02u_init_beacon_config (struct mt76x02_dev*) ;
 int mt76x0_chip_onoff (struct mt76x02_dev*,int,int) ;
 int mt76x0_init_hardware (struct mt76x02_dev*) ;
 int mt76x0_init_usb_dma (struct mt76x02_dev*) ;
 int mt76x0u_mcu_init (struct mt76x02_dev*) ;

__attribute__((used)) static int mt76x0u_init_hardware(struct mt76x02_dev *dev, bool reset)
{
 int err;

 mt76x0_chip_onoff(dev, 1, reset);

 if (!mt76x02_wait_for_mac(&dev->mt76))
  return -ETIMEDOUT;

 err = mt76x0u_mcu_init(dev);
 if (err < 0)
  return err;

 mt76x0_init_usb_dma(dev);
 err = mt76x0_init_hardware(dev);
 if (err < 0)
  return err;

 mt76x02u_init_beacon_config(dev);

 mt76_rmw(dev, MT_US_CYC_CFG, MT_US_CYC_CNT, 0x1e);
 mt76_wr(dev, MT_TXOP_CTRL_CFG,
  FIELD_PREP(MT_TXOP_TRUN_EN, 0x3f) |
  FIELD_PREP(MT_TXOP_EXT_CCA_DLY, 0x58));

 mt76_wr(dev, MT_CH_TIME_CFG,
  MT_CH_TIME_CFG_TIMER_EN |
  MT_CH_TIME_CFG_TX_AS_BUSY |
  MT_CH_TIME_CFG_RX_AS_BUSY |
  MT_CH_TIME_CFG_NAV_AS_BUSY |
  MT_CH_TIME_CFG_EIFS_AS_BUSY);

 return 0;
}
