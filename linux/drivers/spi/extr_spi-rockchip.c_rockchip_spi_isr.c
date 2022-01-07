
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct rockchip_spi {scalar_t__ regs; int rx_left; scalar_t__ tx_left; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ ROCKCHIP_SPI_IMR ;
 int rockchip_spi_pio_reader (struct rockchip_spi*) ;
 int rockchip_spi_pio_writer (struct rockchip_spi*) ;
 int spi_enable_chip (struct rockchip_spi*,int) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t rockchip_spi_isr(int irq, void *dev_id)
{
 struct spi_master *master = dev_id;
 struct rockchip_spi *rs = spi_master_get_devdata(master);

 if (rs->tx_left)
  rockchip_spi_pio_writer(rs);

 rockchip_spi_pio_reader(rs);
 if (!rs->rx_left) {
  spi_enable_chip(rs, 0);
  writel_relaxed(0, rs->regs + ROCKCHIP_SPI_IMR);
  spi_finalize_current_transfer(master);
 }

 return IRQ_HANDLED;
}
