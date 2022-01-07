
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_controller {int dummy; } ;
struct driver_data {int ssp_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;




 scalar_t__ has_acpi_companion (int *) ;
 struct driver_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int pxa2xx_spi_fw_translate_cs(struct spi_controller *controller,
          unsigned int cs)
{
 struct driver_data *drv_data = spi_controller_get_devdata(controller);

 if (has_acpi_companion(&drv_data->pdev->dev)) {
  switch (drv_data->ssp_type) {





  case 128:
  case 129:
   return cs - 1;

  default:
   break;
  }
 }

 return cs;
}
