
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {int rxfilter; TYPE_1__ eeprom; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;


 int EIO ;
 int ETIMEDOUT ;
 int MT_CH_TIME_CFG ;
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ;
 int MT_CH_TIME_CFG_NAV_AS_BUSY ;
 int MT_CH_TIME_CFG_RX_AS_BUSY ;
 int MT_CH_TIME_CFG_TIMER_EN ;
 int MT_CH_TIME_CFG_TX_AS_BUSY ;
 scalar_t__ MT_EE_MAC_ADDR ;
 int MT_RF_BBP_CR ;
 int MT_RX_FILTR_CFG ;
 int MT_TXOP_CTRL_CFG ;
 int MT_US_CYC_CFG ;
 int MT_US_CYC_CNT ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int mt76_poll_msec (struct mt76x02_dev*,int ,int,int ,int) ;
 int mt76_rmw (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_mac_setaddr (struct mt76x02_dev*,scalar_t__) ;
 int mt76x02_mac_shared_key_setup (struct mt76x02_dev*,int,int,int *) ;
 int mt76x02_mac_wcid_setup (struct mt76x02_dev*,int,int ,int *) ;
 int mt76x02_phy_set_rxpath (struct mt76x02_dev*) ;
 int mt76x02_phy_set_txdac (struct mt76x02_dev*) ;
 int mt76x02_wait_for_mac (TYPE_2__*) ;
 int mt76x02_wait_for_txrx_idle (TYPE_2__*) ;
 int mt76x02u_init_beacon_config (struct mt76x02_dev*) ;
 int mt76x2_mcu_load_cr (struct mt76x02_dev*,int ,int ,int ) ;
 int mt76x2_reset_wlan (struct mt76x02_dev*,int) ;
 int mt76x2u_init_dma (struct mt76x02_dev*) ;
 int mt76x2u_mac_reset (struct mt76x02_dev*) ;
 int mt76x2u_mac_stop (struct mt76x02_dev*) ;
 int mt76x2u_mcu_fw_init (struct mt76x02_dev*) ;
 int mt76x2u_mcu_init (struct mt76x02_dev*) ;
 int mt76x2u_power_on (struct mt76x02_dev*) ;

int mt76x2u_init_hardware(struct mt76x02_dev *dev)
{
 int i, k, err;

 mt76x2_reset_wlan(dev, 1);
 mt76x2u_power_on(dev);

 if (!mt76x02_wait_for_mac(&dev->mt76))
  return -ETIMEDOUT;

 err = mt76x2u_mcu_fw_init(dev);
 if (err < 0)
  return err;

 if (!mt76_poll_msec(dev, MT_WPDMA_GLO_CFG,
       MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
       MT_WPDMA_GLO_CFG_RX_DMA_BUSY, 0, 100))
  return -EIO;


 if (!mt76x02_wait_for_mac(&dev->mt76))
  return -ETIMEDOUT;

 mt76x2u_init_dma(dev);

 err = mt76x2u_mcu_init(dev);
 if (err < 0)
  return err;

 err = mt76x2u_mac_reset(dev);
 if (err < 0)
  return err;

 mt76x02_mac_setaddr(dev, dev->mt76.eeprom.data + MT_EE_MAC_ADDR);
 dev->mt76.rxfilter = mt76_rr(dev, MT_RX_FILTR_CFG);

 if (!mt76x02_wait_for_txrx_idle(&dev->mt76))
  return -ETIMEDOUT;


 for (i = 0; i < 256; i++)
  mt76x02_mac_wcid_setup(dev, i, 0, ((void*)0));


 for (i = 0; i < 16; i++) {
  for (k = 0; k < 4; k++)
   mt76x02_mac_shared_key_setup(dev, i, k, ((void*)0));
 }

 mt76x02u_init_beacon_config(dev);

 mt76_rmw(dev, MT_US_CYC_CFG, MT_US_CYC_CNT, 0x1e);
 mt76_wr(dev, MT_TXOP_CTRL_CFG, 0x583f);

 err = mt76x2_mcu_load_cr(dev, MT_RF_BBP_CR, 0, 0);
 if (err < 0)
  return err;

 mt76x02_phy_set_rxpath(dev);
 mt76x02_phy_set_txdac(dev);

 mt76_wr(dev, MT_CH_TIME_CFG,
  MT_CH_TIME_CFG_TIMER_EN |
  MT_CH_TIME_CFG_TX_AS_BUSY |
  MT_CH_TIME_CFG_RX_AS_BUSY |
  MT_CH_TIME_CFG_NAV_AS_BUSY |
  MT_CH_TIME_CFG_EIFS_AS_BUSY);

 return mt76x2u_mac_stop(dev);
}
