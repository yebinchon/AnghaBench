
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
typedef unsigned long long u8 ;
struct lis3lv02d {struct acpi_device* bus_priv; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int EINVAL ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static int lis3lv02d_acpi_read(struct lis3lv02d *lis3, int reg, u8 *ret)
{
 struct acpi_device *dev = lis3->bus_priv;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list args = { 1, &arg0 };
 unsigned long long lret;
 acpi_status status;

 arg0.integer.value = reg;

 status = acpi_evaluate_integer(dev->handle, "ALRD", &args, &lret);
 if (ACPI_FAILURE(status))
  return -EINVAL;
 *ret = lret;
 return 0;
}
