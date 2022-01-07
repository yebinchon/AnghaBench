
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int controller; } ;
struct driver_data {scalar_t__ ssp_type; } ;
struct chip_data {int gpio_cs_inverted; scalar_t__ gpiod_cs; int (* cs_control ) (int ) ;int frm; } ;


 scalar_t__ CE4100_SSP ;
 int PXA2XX_CS_ASSERT ;
 int SSSR ;
 int gpiod_set_value (scalar_t__,int ) ;
 scalar_t__ is_lpss_ssp (struct driver_data*) ;
 int lpss_ssp_cs_control (struct spi_device*,int) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int ) ;
 struct driver_data* spi_controller_get_devdata (int ) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;
 int stub1 (int ) ;

__attribute__((used)) static void cs_assert(struct spi_device *spi)
{
 struct chip_data *chip = spi_get_ctldata(spi);
 struct driver_data *drv_data =
  spi_controller_get_devdata(spi->controller);

 if (drv_data->ssp_type == CE4100_SSP) {
  pxa2xx_spi_write(drv_data, SSSR, chip->frm);
  return;
 }

 if (chip->cs_control) {
  chip->cs_control(PXA2XX_CS_ASSERT);
  return;
 }

 if (chip->gpiod_cs) {
  gpiod_set_value(chip->gpiod_cs, chip->gpio_cs_inverted);
  return;
 }

 if (is_lpss_ssp(drv_data))
  lpss_ssp_cs_control(spi, 1);
}
