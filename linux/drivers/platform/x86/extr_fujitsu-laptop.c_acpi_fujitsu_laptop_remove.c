
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fujitsu_laptop {int fifo; } ;
struct acpi_device {int dummy; } ;


 struct fujitsu_laptop* acpi_driver_data (struct acpi_device*) ;
 int fujitsu_laptop_platform_remove (struct acpi_device*) ;
 int kfifo_free (int *) ;

__attribute__((used)) static int acpi_fujitsu_laptop_remove(struct acpi_device *device)
{
 struct fujitsu_laptop *priv = acpi_driver_data(device);

 fujitsu_laptop_platform_remove(device);

 kfifo_free(&priv->fifo);

 return 0;
}
