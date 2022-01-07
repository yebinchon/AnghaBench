
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT_COM_REG0 ;
 int MT_USB_DMA_CFG ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_EN ;
 int MT_USB_DMA_CFG_RX_BULK_EN ;
 int MT_USB_DMA_CFG_RX_DROP_OR_PAD ;
 int MT_USB_DMA_CFG_TX_BULK_EN ;
 int dev_dbg (int ,char*) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void mt76x0_init_usb_dma(struct mt76x02_dev *dev)
{
 u32 val;

 val = mt76_rr(dev, MT_USB_DMA_CFG);

 val |= MT_USB_DMA_CFG_RX_BULK_EN |
        MT_USB_DMA_CFG_TX_BULK_EN;




 val &= ~MT_USB_DMA_CFG_RX_BULK_AGG_EN;
 mt76_wr(dev, MT_USB_DMA_CFG, val);

 val = mt76_rr(dev, MT_COM_REG0);
 if (val & 1)
  dev_dbg(dev->mt76.dev, "MCU not ready\n");

 val = mt76_rr(dev, MT_USB_DMA_CFG);

 val |= MT_USB_DMA_CFG_RX_DROP_OR_PAD;
 mt76_wr(dev, MT_USB_DMA_CFG, val);
 val &= ~MT_USB_DMA_CFG_RX_DROP_OR_PAD;
 mt76_wr(dev, MT_USB_DMA_CFG, val);
}
