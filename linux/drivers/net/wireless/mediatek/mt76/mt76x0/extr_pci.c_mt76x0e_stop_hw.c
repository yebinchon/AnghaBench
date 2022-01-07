
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int mac_work; } ;
struct mt76x02_dev {TYPE_1__ mt76; int cal_work; } ;


 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ;
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ;
 int cancel_delayed_work_sync (int *) ;
 int dev_warn (int ,char*) ;
 int mt76_clear (struct mt76x02_dev*,int ,int ) ;
 int mt76_poll (struct mt76x02_dev*,int ,int ,int ,int) ;
 int mt76x0_mac_stop (struct mt76x02_dev*) ;

__attribute__((used)) static void mt76x0e_stop_hw(struct mt76x02_dev *dev)
{
 cancel_delayed_work_sync(&dev->cal_work);
 cancel_delayed_work_sync(&dev->mt76.mac_work);

 if (!mt76_poll(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_TX_DMA_BUSY,
         0, 1000))
  dev_warn(dev->mt76.dev, "TX DMA did not stop\n");
 mt76_clear(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_TX_DMA_EN);

 mt76x0_mac_stop(dev);

 if (!mt76_poll(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_RX_DMA_BUSY,
         0, 1000))
  dev_warn(dev->mt76.dev, "TX DMA did not stop\n");
 mt76_clear(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_RX_DMA_EN);
}
