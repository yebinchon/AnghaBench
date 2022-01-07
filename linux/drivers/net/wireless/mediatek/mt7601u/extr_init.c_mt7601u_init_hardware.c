
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt7601u_dev {int const* beacon_offsets; } ;


 int EIO ;
 int FIELD_PREP (int ,int) ;
 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_BEACON_TX ;
 int MT_BEACON_TIME_CFG_SYNC_MODE ;
 int MT_BEACON_TIME_CFG_TBTT_EN ;
 int MT_BEACON_TIME_CFG_TIMER_EN ;
 int MT_BW_20 ;
 int MT_MAC_STATUS ;
 int MT_MAC_STATUS_RX ;
 int MT_MAC_STATUS_TX ;
 int MT_TXOP_CTRL_CFG ;
 int MT_TXOP_EXT_CCA_DLY ;
 int MT_TXOP_TRUN_EN ;
 int MT_US_CYC_CFG ;
 int MT_US_CYC_CNT ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int mt7601u_bbp_set_bw (struct mt7601u_dev*,int ) ;
 int mt7601u_bbp_set_ctrlch (struct mt7601u_dev*,int) ;
 int mt7601u_chip_onoff (struct mt7601u_dev*,int,int) ;
 int mt7601u_dma_cleanup (struct mt7601u_dev*) ;
 int mt7601u_dma_init (struct mt7601u_dev*) ;
 int mt7601u_eeprom_init (struct mt7601u_dev*) ;
 int mt7601u_init_bbp (struct mt7601u_dev*) ;
 int mt7601u_init_key_mem (struct mt7601u_dev*) ;
 int mt7601u_init_usb_dma (struct mt7601u_dev*) ;
 int mt7601u_init_wcid_attr_mem (struct mt7601u_dev*) ;
 int mt7601u_init_wcid_mem (struct mt7601u_dev*) ;
 int mt7601u_mac_set_ctrlch (struct mt7601u_dev*,int) ;
 int mt7601u_mcu_cmd_deinit (struct mt7601u_dev*) ;
 int mt7601u_mcu_cmd_init (struct mt7601u_dev*) ;
 int mt7601u_mcu_init (struct mt7601u_dev*) ;
 int mt7601u_phy_init (struct mt7601u_dev*) ;
 int mt7601u_reset_counters (struct mt7601u_dev*) ;
 int mt7601u_reset_csr_bbp (struct mt7601u_dev*) ;
 int mt7601u_rmw (struct mt7601u_dev*,int ,int ,int) ;
 int mt7601u_set_rx_path (struct mt7601u_dev*,int ) ;
 int mt7601u_set_tx_dac (struct mt7601u_dev*,int ) ;
 int mt7601u_wait_asic_ready (struct mt7601u_dev*) ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;
 int mt7601u_write_mac_initvals (struct mt7601u_dev*) ;
 int mt76_clear (struct mt7601u_dev*,int ,int) ;
 int mt76_poll_msec (struct mt7601u_dev*,int ,int,int ,int) ;

int mt7601u_init_hardware(struct mt7601u_dev *dev)
{
 static const u16 beacon_offsets[16] = {

  0xc000, 0xc200, 0xc400, 0xc600,
  0xc800, 0xca00, 0xcc00, 0xce00,
  0xd000, 0xd200, 0xd400, 0xd600,
  0xd800, 0xda00, 0xdc00, 0xde00
 };
 int ret;

 dev->beacon_offsets = beacon_offsets;

 mt7601u_chip_onoff(dev, 1, 0);

 ret = mt7601u_wait_asic_ready(dev);
 if (ret)
  goto err;
 ret = mt7601u_mcu_init(dev);
 if (ret)
  goto err;

 if (!mt76_poll_msec(dev, MT_WPDMA_GLO_CFG,
       MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
       MT_WPDMA_GLO_CFG_RX_DMA_BUSY, 0, 100)) {
  ret = -EIO;
  goto err;
 }


 ret = mt7601u_wait_asic_ready(dev);
 if (ret)
  goto err;

 mt7601u_reset_csr_bbp(dev);
 mt7601u_init_usb_dma(dev);

 ret = mt7601u_mcu_cmd_init(dev);
 if (ret)
  goto err;
 ret = mt7601u_dma_init(dev);
 if (ret)
  goto err_mcu;
 ret = mt7601u_write_mac_initvals(dev);
 if (ret)
  goto err_rx;

 if (!mt76_poll_msec(dev, MT_MAC_STATUS,
       MT_MAC_STATUS_TX | MT_MAC_STATUS_RX, 0, 100)) {
  ret = -EIO;
  goto err_rx;
 }

 ret = mt7601u_init_bbp(dev);
 if (ret)
  goto err_rx;
 ret = mt7601u_init_wcid_mem(dev);
 if (ret)
  goto err_rx;
 ret = mt7601u_init_key_mem(dev);
 if (ret)
  goto err_rx;
 ret = mt7601u_init_wcid_attr_mem(dev);
 if (ret)
  goto err_rx;

 mt76_clear(dev, MT_BEACON_TIME_CFG, (MT_BEACON_TIME_CFG_TIMER_EN |
          MT_BEACON_TIME_CFG_SYNC_MODE |
          MT_BEACON_TIME_CFG_TBTT_EN |
          MT_BEACON_TIME_CFG_BEACON_TX));

 mt7601u_reset_counters(dev);

 mt7601u_rmw(dev, MT_US_CYC_CFG, MT_US_CYC_CNT, 0x1e);

 mt7601u_wr(dev, MT_TXOP_CTRL_CFG,
     FIELD_PREP(MT_TXOP_TRUN_EN, 0x3f) |
     FIELD_PREP(MT_TXOP_EXT_CCA_DLY, 0x58));

 ret = mt7601u_eeprom_init(dev);
 if (ret)
  goto err_rx;

 ret = mt7601u_phy_init(dev);
 if (ret)
  goto err_rx;

 mt7601u_set_rx_path(dev, 0);
 mt7601u_set_tx_dac(dev, 0);

 mt7601u_mac_set_ctrlch(dev, 0);
 mt7601u_bbp_set_ctrlch(dev, 0);
 mt7601u_bbp_set_bw(dev, MT_BW_20);

 return 0;

err_rx:
 mt7601u_dma_cleanup(dev);
err_mcu:
 mt7601u_mcu_cmd_deinit(dev);
err:
 mt7601u_chip_onoff(dev, 0, 0);
 return ret;
}
