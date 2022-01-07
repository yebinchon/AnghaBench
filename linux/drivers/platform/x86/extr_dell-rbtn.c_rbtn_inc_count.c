
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {scalar_t__ type; } ;
struct device {int dummy; } ;
struct acpi_device {struct rbtn_data* driver_data; } ;


 scalar_t__ RBTN_SLIDER ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static int rbtn_inc_count(struct device *dev, void *data)
{
 struct acpi_device *device = to_acpi_device(dev);
 struct rbtn_data *rbtn_data = device->driver_data;
 int *count = data;

 if (rbtn_data->type == RBTN_SLIDER)
  (*count)++;

 return 0;
}
