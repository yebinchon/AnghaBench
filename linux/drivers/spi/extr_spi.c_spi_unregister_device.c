
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; } ;


 scalar_t__ ACPI_COMPANION (TYPE_1__*) ;
 int OF_POPULATED ;
 int acpi_device_clear_enumerated (scalar_t__) ;
 int device_unregister (TYPE_1__*) ;
 int of_node_clear_flag (scalar_t__,int ) ;
 int of_node_put (scalar_t__) ;

void spi_unregister_device(struct spi_device *spi)
{
 if (!spi)
  return;

 if (spi->dev.of_node) {
  of_node_clear_flag(spi->dev.of_node, OF_POPULATED);
  of_node_put(spi->dev.of_node);
 }
 if (ACPI_COMPANION(&spi->dev))
  acpi_device_clear_enumerated(ACPI_COMPANION(&spi->dev));
 device_unregister(&spi->dev);
}
