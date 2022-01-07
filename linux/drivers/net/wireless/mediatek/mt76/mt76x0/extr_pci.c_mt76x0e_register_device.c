
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int BIT (int) ;
 int ETIMEDOUT ;
 int FIELD_PREP (int ,int) ;
 int MT76_STATE_INITIALIZED ;
 int MT_CH_CCA_RC_EN ;
 int MT_CH_TIME_CFG ;
 int MT_CH_TIME_CFG_CH_TIMER_CLR ;
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ;
 int MT_CH_TIME_CFG_NAV_AS_BUSY ;
 int MT_CH_TIME_CFG_RX_AS_BUSY ;
 int MT_CH_TIME_CFG_TIMER_EN ;
 int MT_CH_TIME_CFG_TX_AS_BUSY ;
 int MT_COEXCFG0 ;
 int MT_EE_NIC_CONF_0 ;
 int MT_EE_NIC_CONF_0_PA_IO_CURRENT ;
 int MT_MAX_LEN_CFG ;
 int MT_XO_CTRL7 ;
 int mt76_chip (TYPE_1__*) ;
 int mt76_clear (struct mt76x02_dev*,int,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_dma_disable (struct mt76x02_dev*) ;
 int mt76x02_dma_init (struct mt76x02_dev*) ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x02_wait_for_mac (TYPE_1__*) ;
 int mt76x02e_init_beacon_config (struct mt76x02_dev*) ;
 int mt76x0_chip_onoff (struct mt76x02_dev*,int,int) ;
 int mt76x0_init_hardware (struct mt76x02_dev*) ;
 int mt76x0_register_device (struct mt76x02_dev*) ;
 int mt76x0e_mcu_init (struct mt76x02_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mt76x0e_register_device(struct mt76x02_dev *dev)
{
 int err;

 mt76x0_chip_onoff(dev, 1, 0);
 if (!mt76x02_wait_for_mac(&dev->mt76))
  return -ETIMEDOUT;

 mt76x02_dma_disable(dev);
 err = mt76x0e_mcu_init(dev);
 if (err < 0)
  return err;

 err = mt76x02_dma_init(dev);
 if (err < 0)
  return err;

 err = mt76x0_init_hardware(dev);
 if (err < 0)
  return err;

 mt76x02e_init_beacon_config(dev);

 if (mt76_chip(&dev->mt76) == 0x7610) {
  u16 val;

  mt76_clear(dev, MT_COEXCFG0, BIT(0));

  val = mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_0);
  if (!(val & MT_EE_NIC_CONF_0_PA_IO_CURRENT))
   mt76_set(dev, MT_XO_CTRL7, 0xc03);
 }

 mt76_clear(dev, 0x110, BIT(9));
 mt76_set(dev, MT_MAX_LEN_CFG, BIT(13));

 mt76_wr(dev, MT_CH_TIME_CFG,
  MT_CH_TIME_CFG_TIMER_EN |
  MT_CH_TIME_CFG_TX_AS_BUSY |
  MT_CH_TIME_CFG_RX_AS_BUSY |
  MT_CH_TIME_CFG_NAV_AS_BUSY |
  MT_CH_TIME_CFG_EIFS_AS_BUSY |
  MT_CH_CCA_RC_EN |
  FIELD_PREP(MT_CH_TIME_CFG_CH_TIMER_CLR, 1));

 err = mt76x0_register_device(dev);
 if (err < 0)
  return err;

 set_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);

 return 0;
}
