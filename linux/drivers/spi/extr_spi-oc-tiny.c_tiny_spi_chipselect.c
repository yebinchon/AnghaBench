
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiny_spi {scalar_t__ gpio_cs_count; int * gpio_cs; } ;
struct spi_device {size_t chip_select; int mode; } ;


 int SPI_CS_HIGH ;
 int gpio_set_value (int ,int) ;
 struct tiny_spi* tiny_spi_to_hw (struct spi_device*) ;

__attribute__((used)) static void tiny_spi_chipselect(struct spi_device *spi, int is_active)
{
 struct tiny_spi *hw = tiny_spi_to_hw(spi);

 if (hw->gpio_cs_count > 0) {
  gpio_set_value(hw->gpio_cs[spi->chip_select],
   (spi->mode & SPI_CS_HIGH) ? is_active : !is_active);
 }
}
