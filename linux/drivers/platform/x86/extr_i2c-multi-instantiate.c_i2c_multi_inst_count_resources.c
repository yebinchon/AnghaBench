
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int LIST_HEAD (int ) ;
 int acpi_dev_free_resource_list (int *) ;
 int acpi_dev_get_resources (struct acpi_device*,int *,int ,int*) ;
 int i2c_multi_inst_count ;
 int r ;

__attribute__((used)) static int i2c_multi_inst_count_resources(struct acpi_device *adev)
{
 LIST_HEAD(r);
 int count = 0;
 int ret;

 ret = acpi_dev_get_resources(adev, &r, i2c_multi_inst_count, &count);
 if (ret < 0)
  return ret;

 acpi_dev_free_resource_list(&r);
 return count;
}
