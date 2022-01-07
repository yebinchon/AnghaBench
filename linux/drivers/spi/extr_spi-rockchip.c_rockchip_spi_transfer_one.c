
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; int len; int rx_buf; int tx_buf; } ;
struct spi_master {int (* can_dma ) (struct spi_master*,struct spi_device*,struct spi_transfer*) ;} ;
struct spi_device {int dummy; } ;
struct rockchip_spi {int n_bytes; int dev; scalar_t__ regs; } ;


 int EINVAL ;
 int ROCKCHIP_SPI_MAX_TRANLEN ;
 scalar_t__ ROCKCHIP_SPI_SR ;
 scalar_t__ ROCKCHIP_SPI_SSIENR ;
 int SR_BUSY ;
 int WARN_ON (int) ;
 int dev_err (int ,char*,...) ;
 int readl_relaxed (scalar_t__) ;
 int rockchip_spi_config (struct rockchip_spi*,struct spi_device*,struct spi_transfer*,int) ;
 int rockchip_spi_prepare_dma (struct rockchip_spi*,struct spi_master*,struct spi_transfer*) ;
 int rockchip_spi_prepare_irq (struct rockchip_spi*,struct spi_transfer*) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;
 int stub1 (struct spi_master*,struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int rockchip_spi_transfer_one(
  struct spi_master *master,
  struct spi_device *spi,
  struct spi_transfer *xfer)
{
 struct rockchip_spi *rs = spi_master_get_devdata(master);
 bool use_dma;

 WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
  (readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY));

 if (!xfer->tx_buf && !xfer->rx_buf) {
  dev_err(rs->dev, "No buffer for transfer\n");
  return -EINVAL;
 }

 if (xfer->len > ROCKCHIP_SPI_MAX_TRANLEN) {
  dev_err(rs->dev, "Transfer is too long (%d)\n", xfer->len);
  return -EINVAL;
 }

 rs->n_bytes = xfer->bits_per_word <= 8 ? 1 : 2;

 use_dma = master->can_dma ? master->can_dma(master, spi, xfer) : 0;

 rockchip_spi_config(rs, spi, xfer, use_dma);

 if (use_dma)
  return rockchip_spi_prepare_dma(rs, master, xfer);

 return rockchip_spi_prepare_irq(rs, xfer);
}
