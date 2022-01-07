
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct altera_spi {scalar_t__ count; scalar_t__ len; scalar_t__ base; int imr; } ;
typedef int irqreturn_t ;


 scalar_t__ ALTERA_SPI_CONTROL ;
 int ALTERA_SPI_CONTROL_IRRDY_MSK ;
 int IRQ_HANDLED ;
 int altera_spi_rx_word (struct altera_spi*) ;
 int altera_spi_tx_word (struct altera_spi*) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct altera_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t altera_spi_irq(int irq, void *dev)
{
 struct spi_master *master = dev;
 struct altera_spi *hw = spi_master_get_devdata(master);

 altera_spi_rx_word(hw);

 if (hw->count < hw->len) {
  altera_spi_tx_word(hw);
 } else {

  hw->imr &= ~ALTERA_SPI_CONTROL_IRRDY_MSK;
  writel(hw->imr, hw->base + ALTERA_SPI_CONTROL);

  spi_finalize_current_transfer(master);
 }

 return IRQ_HANDLED;
}
