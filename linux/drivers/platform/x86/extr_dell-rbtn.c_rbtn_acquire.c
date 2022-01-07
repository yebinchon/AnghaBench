
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int EINVAL ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static int rbtn_acquire(struct acpi_device *device, bool enable)
{
 struct acpi_object_list input;
 union acpi_object param;
 acpi_status status;

 param.type = ACPI_TYPE_INTEGER;
 param.integer.value = enable;
 input.count = 1;
 input.pointer = &param;

 status = acpi_evaluate_object(device->handle, "ARBT", &input, ((void*)0));
 if (ACPI_FAILURE(status))
  return -EINVAL;

 return 0;
}
