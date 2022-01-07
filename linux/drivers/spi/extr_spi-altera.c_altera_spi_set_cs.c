
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int chip_select; } ;
struct altera_spi {scalar_t__ base; int imr; } ;


 scalar_t__ ALTERA_SPI_CONTROL ;
 int ALTERA_SPI_CONTROL_SSO_MSK ;
 scalar_t__ ALTERA_SPI_SLAVE_SEL ;
 int BIT (int ) ;
 struct altera_spi* altera_spi_to_hw (struct spi_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void altera_spi_set_cs(struct spi_device *spi, bool is_high)
{
 struct altera_spi *hw = altera_spi_to_hw(spi);

 if (is_high) {
  hw->imr &= ~ALTERA_SPI_CONTROL_SSO_MSK;
  writel(hw->imr, hw->base + ALTERA_SPI_CONTROL);
  writel(0, hw->base + ALTERA_SPI_SLAVE_SEL);
 } else {
  writel(BIT(spi->chip_select), hw->base + ALTERA_SPI_SLAVE_SEL);
  hw->imr |= ALTERA_SPI_CONTROL_SSO_MSK;
  writel(hw->imr, hw->base + ALTERA_SPI_CONTROL);
 }
}
