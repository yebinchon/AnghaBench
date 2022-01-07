
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource_i2c_serialbus {int dummy; } ;
struct acpi_resource {int dummy; } ;


 scalar_t__ i2c_acpi_get_i2c_resource (struct acpi_resource*,struct acpi_resource_i2c_serialbus**) ;

__attribute__((used)) static int i2c_multi_inst_count(struct acpi_resource *ares, void *data)
{
 struct acpi_resource_i2c_serialbus *sb;
 int *count = data;

 if (i2c_acpi_get_i2c_resource(ares, &sb))
  *count = *count + 1;

 return 1;
}
