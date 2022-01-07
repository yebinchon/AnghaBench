
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int controller; } ;
struct driver_data {scalar_t__ ssp_type; int cs_gpiods; } ;
struct chip_data {scalar_t__ gpiod_cs; } ;


 scalar_t__ CE4100_SSP ;
 int gpiod_put (scalar_t__) ;
 int kfree (struct chip_data*) ;
 struct driver_data* spi_controller_get_devdata (int ) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;

__attribute__((used)) static void cleanup(struct spi_device *spi)
{
 struct chip_data *chip = spi_get_ctldata(spi);
 struct driver_data *drv_data =
  spi_controller_get_devdata(spi->controller);

 if (!chip)
  return;

 if (drv_data->ssp_type != CE4100_SSP && !drv_data->cs_gpiods &&
     chip->gpiod_cs)
  gpiod_put(chip->gpiod_cs);

 kfree(chip);
}
