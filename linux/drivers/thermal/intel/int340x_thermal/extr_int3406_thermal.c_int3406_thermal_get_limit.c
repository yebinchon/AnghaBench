
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct int3406_thermal_data {int lower_limit; int upper_limit; TYPE_1__* br; int handle; } ;
typedef int acpi_status ;
struct TYPE_2__ {int count; int levels; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 void* int3406_thermal_get_index (int ,int,unsigned long long) ;

__attribute__((used)) static void int3406_thermal_get_limit(struct int3406_thermal_data *d)
{
 acpi_status status;
 unsigned long long lower_limit, upper_limit;

 status = acpi_evaluate_integer(d->handle, "DDDL", ((void*)0), &lower_limit);
 if (ACPI_SUCCESS(status))
  d->lower_limit = int3406_thermal_get_index(d->br->levels,
     d->br->count, lower_limit);

 status = acpi_evaluate_integer(d->handle, "DDPC", ((void*)0), &upper_limit);
 if (ACPI_SUCCESS(status))
  d->upper_limit = int3406_thermal_get_index(d->br->levels,
     d->br->count, upper_limit);


 d->lower_limit = d->lower_limit > 0 ? d->lower_limit : 2;
 d->upper_limit = d->upper_limit > 0 ? d->upper_limit : d->br->count - 1;
}
