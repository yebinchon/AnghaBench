
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; size_t chip_select; int master; } ;
struct efm32_spi_ddata {int * csgpio; } ;


 int BITBANG_CS_ACTIVE ;
 int SPI_CS_HIGH ;
 int gpio_set_value (int ,int) ;
 struct efm32_spi_ddata* spi_master_get_devdata (int ) ;

__attribute__((used)) static void efm32_spi_chipselect(struct spi_device *spi, int is_on)
{
 struct efm32_spi_ddata *ddata = spi_master_get_devdata(spi->master);
 int value = !(spi->mode & SPI_CS_HIGH) == !(is_on == BITBANG_CS_ACTIVE);

 gpio_set_value(ddata->csgpio[spi->chip_select], value);
}
