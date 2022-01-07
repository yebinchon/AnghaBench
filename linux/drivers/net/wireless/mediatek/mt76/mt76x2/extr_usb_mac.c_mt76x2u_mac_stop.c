
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int BIT (int) ;
 int CFG ;
 int CORE ;
 int EIO ;
 int IBI ;
 int MT76_REMOVED ;
 int MT_BBP (int ,int) ;
 int MT_MAC_STATUS ;
 int MT_MAC_STATUS_RX ;
 int MT_MAC_STATUS_TX ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_TXOP_CTRL_CFG ;
 int MT_TXOP_ED_CCA_EN ;
 int MT_TXOP_HLDR_ET ;
 int MT_TXOP_HLDR_TX40M_BLK_EN ;
 int MT_TX_RTS_CFG ;
 int MT_TX_RTS_CFG_RETRY_LIMIT ;
 int MT_USB_DMA_CFG_RX_BUSY ;
 int MT_USB_DMA_CFG_TX_BUSY ;
 int MT_USB_U3DMA_CFG ;
 int MT_VEND_ADDR (int ,int ) ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int mt76_clear (struct mt76x02_dev*,int,int) ;
 int mt76_poll (struct mt76x02_dev*,int,int ,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int) ;
 int mt76_set (struct mt76x02_dev*,int,int) ;
 int mt76_wr (struct mt76x02_dev*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

int mt76x2u_mac_stop(struct mt76x02_dev *dev)
{
 int i, count = 0, val;
 bool stopped = 0;
 u32 rts_cfg;

 if (test_bit(MT76_REMOVED, &dev->mt76.state))
  return -EIO;

 rts_cfg = mt76_rr(dev, MT_TX_RTS_CFG);
 mt76_wr(dev, MT_TX_RTS_CFG, rts_cfg & ~MT_TX_RTS_CFG_RETRY_LIMIT);

 mt76_clear(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
 mt76_clear(dev, MT_TXOP_HLDR_ET, MT_TXOP_HLDR_TX40M_BLK_EN);


 for (i = 0; i < 2000; i++) {
  val = mt76_rr(dev, MT_VEND_ADDR(CFG, MT_USB_U3DMA_CFG));
  if (!(val & MT_USB_DMA_CFG_TX_BUSY) && i > 10)
   break;
  usleep_range(50, 100);
 }


 for (i = 0; i < 200; i++) {
  if (!(mt76_rr(dev, 0x0438) & 0xffffffff) &&
      !(mt76_rr(dev, 0x0a30) & 0x000000ff) &&
      !(mt76_rr(dev, 0x0a34) & 0xff00ff00))
   break;
  usleep_range(10, 20);
 }


 mt76_clear(dev, MT_MAC_SYS_CTRL,
     MT_MAC_SYS_CTRL_ENABLE_RX |
     MT_MAC_SYS_CTRL_ENABLE_TX);


 for (i = 0; i < 1000; i++) {
  if (!(mt76_rr(dev, MT_MAC_STATUS) & MT_MAC_STATUS_TX) &&
      !mt76_rr(dev, MT_BBP(IBI, 12))) {
   stopped = 1;
   break;
  }
  usleep_range(10, 20);
 }

 if (!stopped) {
  mt76_set(dev, MT_BBP(CORE, 4), BIT(1));
  mt76_clear(dev, MT_BBP(CORE, 4), BIT(1));

  mt76_set(dev, MT_BBP(CORE, 4), BIT(0));
  mt76_clear(dev, MT_BBP(CORE, 4), BIT(0));
 }


 for (i = 0; i < 200; i++) {
  if (!(mt76_rr(dev, 0x0430) & 0x00ff0000) &&
      !(mt76_rr(dev, 0x0a30) & 0xffffffff) &&
      !(mt76_rr(dev, 0x0a34) & 0xffffffff) &&
      ++count > 10)
   break;
  msleep(50);
 }

 if (!mt76_poll(dev, MT_MAC_STATUS, MT_MAC_STATUS_RX, 0, 2000))
  dev_warn(dev->mt76.dev, "MAC RX failed to stop\n");


 for (i = 0; i < 2000; i++) {
  val = mt76_rr(dev, MT_VEND_ADDR(CFG, MT_USB_U3DMA_CFG));
  if (!(val & MT_USB_DMA_CFG_RX_BUSY) && i > 10)
   break;
  usleep_range(50, 100);
 }

 mt76_wr(dev, MT_TX_RTS_CFG, rts_cfg);

 return 0;
}
