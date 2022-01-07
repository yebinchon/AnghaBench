
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1550_spi {unsigned int dma_rx_tmpbuf_size; scalar_t__ dma_rx_tmpbuf; int dma_rx_tmpbuf_addr; int dev; } ;


 int DMA_FROM_DEVICE ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_map_single (int ,scalar_t__,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int kfree (scalar_t__) ;
 scalar_t__ kmalloc (unsigned int,int ) ;

__attribute__((used)) static int au1550_spi_dma_rxtmp_alloc(struct au1550_spi *hw, unsigned size)
{
 hw->dma_rx_tmpbuf = kmalloc(size, GFP_KERNEL);
 if (!hw->dma_rx_tmpbuf)
  return -ENOMEM;
 hw->dma_rx_tmpbuf_size = size;
 hw->dma_rx_tmpbuf_addr = dma_map_single(hw->dev, hw->dma_rx_tmpbuf,
   size, DMA_FROM_DEVICE);
 if (dma_mapping_error(hw->dev, hw->dma_rx_tmpbuf_addr)) {
  kfree(hw->dma_rx_tmpbuf);
  hw->dma_rx_tmpbuf = 0;
  hw->dma_rx_tmpbuf_size = 0;
  return -EFAULT;
 }
 return 0;
}
