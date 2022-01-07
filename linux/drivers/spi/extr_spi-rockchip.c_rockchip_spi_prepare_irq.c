
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; scalar_t__ tx_buf; } ;
struct rockchip_spi {int tx_left; int n_bytes; int rx_left; scalar_t__ regs; scalar_t__ tx; int rx; } ;


 int INT_RF_FULL ;
 scalar_t__ ROCKCHIP_SPI_IMR ;
 int rockchip_spi_pio_writer (struct rockchip_spi*) ;
 int spi_enable_chip (struct rockchip_spi*,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int rockchip_spi_prepare_irq(struct rockchip_spi *rs,
  struct spi_transfer *xfer)
{
 rs->tx = xfer->tx_buf;
 rs->rx = xfer->rx_buf;
 rs->tx_left = rs->tx ? xfer->len / rs->n_bytes : 0;
 rs->rx_left = xfer->len / rs->n_bytes;

 writel_relaxed(INT_RF_FULL, rs->regs + ROCKCHIP_SPI_IMR);
 spi_enable_chip(rs, 1);

 if (rs->tx_left)
  rockchip_spi_pio_writer(rs);


 return 1;
}
