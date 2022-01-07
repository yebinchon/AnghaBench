
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_acpi_dev {TYPE_1__* acpi_dev; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int pr_err (char*) ;

__attribute__((used)) static int toshiba_acpi_query_hotkey(struct toshiba_acpi_dev *dev)
{
 unsigned long long value;
 acpi_status status;

 status = acpi_evaluate_integer(dev->acpi_dev->handle, "INFO",
          ((void*)0), &value);
 if (ACPI_FAILURE(status)) {
  pr_err("ACPI INFO method execution failed\n");
  return -EIO;
 }

 return value;
}
