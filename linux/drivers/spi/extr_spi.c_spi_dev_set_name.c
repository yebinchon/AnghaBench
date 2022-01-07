
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int chip_select; TYPE_1__* controller; int dev; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int acpi_dev_name (struct acpi_device*) ;
 int dev_name (int *) ;
 int dev_set_name (int *,char*,int ,...) ;

__attribute__((used)) static void spi_dev_set_name(struct spi_device *spi)
{
 struct acpi_device *adev = ACPI_COMPANION(&spi->dev);

 if (adev) {
  dev_set_name(&spi->dev, "spi-%s", acpi_dev_name(adev));
  return;
 }

 dev_set_name(&spi->dev, "%s.%u", dev_name(&spi->controller->dev),
       spi->chip_select);
}
