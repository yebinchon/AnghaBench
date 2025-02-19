
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dev; int state; } ;


 int MT7601U_STATE_REMOVED ;
 int MT_BEACON_TIME_CFG ;
 int MT_BEACON_TIME_CFG_BEACON_TX ;
 int MT_BEACON_TIME_CFG_SYNC_MODE ;
 int MT_BEACON_TIME_CFG_TBTT_EN ;
 int MT_BEACON_TIME_CFG_TIMER_EN ;
 int MT_MAC_STATUS ;
 int MT_MAC_STATUS_RX ;
 int MT_MAC_STATUS_TX ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_RXQ_STA ;
 int MT_USB_DMA_CFG ;
 int MT_USB_DMA_CFG_RX_BUSY ;
 int MT_USB_DMA_CFG_TX_BUSY ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int mt76_clear (struct mt7601u_dev*,int ,int) ;
 int mt76_poll (struct mt7601u_dev*,int ,int ,int ,int) ;
 int mt76_rr (struct mt7601u_dev*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mt7601u_mac_stop_hw(struct mt7601u_dev *dev)
{
 int i, ok;

 if (test_bit(MT7601U_STATE_REMOVED, &dev->state))
  return;

 mt76_clear(dev, MT_BEACON_TIME_CFG, MT_BEACON_TIME_CFG_TIMER_EN |
     MT_BEACON_TIME_CFG_SYNC_MODE | MT_BEACON_TIME_CFG_TBTT_EN |
     MT_BEACON_TIME_CFG_BEACON_TX);

 if (!mt76_poll(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_TX_BUSY, 0, 1000))
  dev_warn(dev->dev, "Warning: TX DMA did not stop!\n");


 i = 200;
 while (i-- && ((mt76_rr(dev, 0x0438) & 0xffffffff) ||
         (mt76_rr(dev, 0x0a30) & 0x000000ff) ||
         (mt76_rr(dev, 0x0a34) & 0x00ff00ff)))
  msleep(10);

 if (!mt76_poll(dev, MT_MAC_STATUS, MT_MAC_STATUS_TX, 0, 1000))
  dev_warn(dev->dev, "Warning: MAC TX did not stop!\n");

 mt76_clear(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_RX |
      MT_MAC_SYS_CTRL_ENABLE_TX);


 ok = 0;
 i = 200;
 while (i--) {
  if (!(mt76_rr(dev, MT_RXQ_STA) & 0x00ff0000) &&
      !mt76_rr(dev, 0x0a30) &&
      !mt76_rr(dev, 0x0a34)) {
   if (ok++ > 5)
    break;
   continue;
  }
  msleep(1);
 }

 if (!mt76_poll(dev, MT_MAC_STATUS, MT_MAC_STATUS_RX, 0, 1000))
  dev_warn(dev->dev, "Warning: MAC RX did not stop!\n");

 if (!mt76_poll(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_RX_BUSY, 0, 1000))
  dev_warn(dev->dev, "Warning: RX DMA did not stop!\n");
}
