
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1550_spi {scalar_t__ dma_rx_tmpbuf_size; scalar_t__ dma_rx_tmpbuf; int dma_rx_tmpbuf_addr; int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void au1550_spi_dma_rxtmp_free(struct au1550_spi *hw)
{
 dma_unmap_single(hw->dev, hw->dma_rx_tmpbuf_addr,
   hw->dma_rx_tmpbuf_size, DMA_FROM_DEVICE);
 kfree(hw->dma_rx_tmpbuf);
 hw->dma_rx_tmpbuf = 0;
 hw->dma_rx_tmpbuf_size = 0;
}
