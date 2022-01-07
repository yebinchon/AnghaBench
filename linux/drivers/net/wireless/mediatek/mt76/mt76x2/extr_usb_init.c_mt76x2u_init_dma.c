
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int CFG ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_EN ;
 int MT_USB_DMA_CFG_RX_BULK_EN ;
 int MT_USB_DMA_CFG_RX_DROP_OR_PAD ;
 int MT_USB_DMA_CFG_TX_BULK_EN ;
 int MT_USB_U3DMA_CFG ;
 int MT_VEND_ADDR (int ,int ) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static void mt76x2u_init_dma(struct mt76x02_dev *dev)
{
 u32 val = mt76_rr(dev, MT_VEND_ADDR(CFG, MT_USB_U3DMA_CFG));

 val |= MT_USB_DMA_CFG_RX_DROP_OR_PAD |
        MT_USB_DMA_CFG_RX_BULK_EN |
        MT_USB_DMA_CFG_TX_BULK_EN;




 val &= ~MT_USB_DMA_CFG_RX_BULK_AGG_EN;
 mt76_wr(dev, MT_VEND_ADDR(CFG, MT_USB_U3DMA_CFG), val);
}
