
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int in_max_packet; } ;


 int FIELD_PREP (int ,int ) ;
 int MT_USB_AGGR_SIZE_LIMIT ;
 int MT_USB_AGGR_TIMEOUT ;
 int MT_USB_DMA_CFG ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_EN ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_LMT ;
 int MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ;
 int MT_USB_DMA_CFG_RX_BULK_EN ;
 int MT_USB_DMA_CFG_TX_BULK_EN ;
 int MT_USB_DMA_CFG_UDMA_RX_WL_DROP ;
 int mt7601u_wr (struct mt7601u_dev*,int ,int) ;

__attribute__((used)) static void mt7601u_init_usb_dma(struct mt7601u_dev *dev)
{
 u32 val;

 val = FIELD_PREP(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, MT_USB_AGGR_TIMEOUT) |
       FIELD_PREP(MT_USB_DMA_CFG_RX_BULK_AGG_LMT,
    MT_USB_AGGR_SIZE_LIMIT) |
       MT_USB_DMA_CFG_RX_BULK_EN |
       MT_USB_DMA_CFG_TX_BULK_EN;
 if (dev->in_max_packet == 512)
  val |= MT_USB_DMA_CFG_RX_BULK_AGG_EN;
 mt7601u_wr(dev, MT_USB_DMA_CFG, val);

 val |= MT_USB_DMA_CFG_UDMA_RX_WL_DROP;
 mt7601u_wr(dev, MT_USB_DMA_CFG, val);
 val &= ~MT_USB_DMA_CFG_UDMA_RX_WL_DROP;
 mt7601u_wr(dev, MT_USB_DMA_CFG, val);
}
