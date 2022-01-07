
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int cs_gpio; } ;


 int BITBANG_CS_INACTIVE ;
 int SPI_CS_HIGH ;
 int SPI_NO_CS ;
 int gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void spi_imx_chipselect(struct spi_device *spi, int is_active)
{
 int active = is_active != BITBANG_CS_INACTIVE;
 int dev_is_lowactive = !(spi->mode & SPI_CS_HIGH);

 if (spi->mode & SPI_NO_CS)
  return;

 if (!gpio_is_valid(spi->cs_gpio))
  return;

 gpio_set_value(spi->cs_gpio, dev_is_lowactive ^ active);
}
