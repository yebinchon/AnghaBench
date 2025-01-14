
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int WPDMA_GLO_CFG ;
 int WPDMA_GLO_CFG_ENABLE_RX_DMA ;
 int WPDMA_GLO_CFG_ENABLE_TX_DMA ;
 int WPDMA_GLO_CFG_RX_DMA_BUSY ;
 int WPDMA_GLO_CFG_TX_DMA_BUSY ;
 int WPDMA_GLO_CFG_TX_WRITEBACK_DONE ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

void rt2800_disable_wpdma(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 reg = rt2800_register_read(rt2x00dev, WPDMA_GLO_CFG);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_ENABLE_TX_DMA, 0);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_TX_DMA_BUSY, 0);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_ENABLE_RX_DMA, 0);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_RX_DMA_BUSY, 0);
 rt2x00_set_field32(&reg, WPDMA_GLO_CFG_TX_WRITEBACK_DONE, 1);
 rt2800_register_write(rt2x00dev, WPDMA_GLO_CFG, reg);
}
