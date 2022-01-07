
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; int dev; } ;
struct spi_transfer {int dummy; } ;


 scalar_t__ SPRD_SPI_INT_CLR ;
 scalar_t__ SPRD_SPI_INT_RAW_STS ;
 int SPRD_SPI_RX_END_INT_CLR ;
 int SPRD_SPI_RX_END_IRQ ;
 int dev_err (int ,char*) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int ,int) ;
 int sprd_spi_transfer_max_timeout (struct sprd_spi*,struct spi_transfer*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int sprd_spi_wait_for_rx_end(struct sprd_spi *ss, struct spi_transfer *t)
{
 u32 val, us;
 int ret;

 us = sprd_spi_transfer_max_timeout(ss, t);
 ret = readl_relaxed_poll_timeout(ss->base + SPRD_SPI_INT_RAW_STS, val,
      val & SPRD_SPI_RX_END_IRQ, 0, us);
 if (ret) {
  dev_err(ss->dev, "SPI error, spi rx timeout!\n");
  return ret;
 }

 writel_relaxed(SPRD_SPI_RX_END_INT_CLR, ss->base + SPRD_SPI_INT_CLR);

 return 0;
}
