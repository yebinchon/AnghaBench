
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dma_rx; int dma_tx; } ;
struct rockchip_spi {int state; scalar_t__ regs; } ;


 scalar_t__ ROCKCHIP_SPI_IMR ;
 int RXDMA ;
 int TXDMA ;
 int atomic_read (int *) ;
 int dmaengine_terminate_async (int ) ;
 int spi_enable_chip (struct rockchip_spi*,int) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void rockchip_spi_handle_err(struct spi_master *master,
        struct spi_message *msg)
{
 struct rockchip_spi *rs = spi_master_get_devdata(master);




 spi_enable_chip(rs, 0);


 writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);

 if (atomic_read(&rs->state) & TXDMA)
  dmaengine_terminate_async(master->dma_tx);

 if (atomic_read(&rs->state) & RXDMA)
  dmaengine_terminate_async(master->dma_rx);
}
