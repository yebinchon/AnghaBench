
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rx_len; } ;
struct sprd_spi {int trans_mode; scalar_t__ len; scalar_t__ (* read_bufs ) (struct sprd_spi*,scalar_t__) ;int xfer_completion; TYPE_1__ dma; int rx_buf; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SPRD_SPI_INT_CLR ;
 scalar_t__ SPRD_SPI_INT_MASK_STS ;
 int SPRD_SPI_MASK_RX_END ;
 int SPRD_SPI_MASK_TX_END ;
 int SPRD_SPI_RX_END_CLR ;
 int SPRD_SPI_RX_MODE ;
 int SPRD_SPI_TX_END_CLR ;
 int complete (int *) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ stub1 (struct sprd_spi*,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t sprd_spi_handle_irq(int irq, void *data)
{
 struct sprd_spi *ss = (struct sprd_spi *)data;
 u32 val = readl_relaxed(ss->base + SPRD_SPI_INT_MASK_STS);

 if (val & SPRD_SPI_MASK_TX_END) {
  writel_relaxed(SPRD_SPI_TX_END_CLR, ss->base + SPRD_SPI_INT_CLR);
  if (!(ss->trans_mode & SPRD_SPI_RX_MODE))
   complete(&ss->xfer_completion);

  return IRQ_HANDLED;
 }

 if (val & SPRD_SPI_MASK_RX_END) {
  writel_relaxed(SPRD_SPI_RX_END_CLR, ss->base + SPRD_SPI_INT_CLR);
  if (ss->dma.rx_len < ss->len) {
   ss->rx_buf += ss->dma.rx_len;
   ss->dma.rx_len +=
    ss->read_bufs(ss, ss->len - ss->dma.rx_len);
  }
  complete(&ss->xfer_completion);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
