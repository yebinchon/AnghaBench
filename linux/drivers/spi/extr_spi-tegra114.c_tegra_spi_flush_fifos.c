
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {int dev; } ;


 int EIO ;
 unsigned long HZ ;
 int SPI_FIFO_EMPTY ;
 int SPI_FIFO_STATUS ;
 int SPI_RX_FIFO_FLUSH ;
 int SPI_TX_FIFO_FLUSH ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int tegra_spi_readl (struct tegra_spi_data*,int ) ;
 int tegra_spi_writel (struct tegra_spi_data*,int,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int tegra_spi_flush_fifos(struct tegra_spi_data *tspi)
{
 unsigned long timeout = jiffies + HZ;
 u32 status;

 status = tegra_spi_readl(tspi, SPI_FIFO_STATUS);
 if ((status & SPI_FIFO_EMPTY) != SPI_FIFO_EMPTY) {
  status |= SPI_RX_FIFO_FLUSH | SPI_TX_FIFO_FLUSH;
  tegra_spi_writel(tspi, status, SPI_FIFO_STATUS);
  while ((status & SPI_FIFO_EMPTY) != SPI_FIFO_EMPTY) {
   status = tegra_spi_readl(tspi, SPI_FIFO_STATUS);
   if (time_after(jiffies, timeout)) {
    dev_err(tspi->dev,
     "timeout waiting for fifo flush\n");
    return -EIO;
   }

   udelay(1);
  }
 }

 return 0;
}
