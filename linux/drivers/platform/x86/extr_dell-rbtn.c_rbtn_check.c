
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef enum rbtn_type { ____Placeholder_rbtn_type } rbtn_type ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int RBTN_SLIDER ;
 int RBTN_TOGGLE ;
 int RBTN_UNKNOWN ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static enum rbtn_type rbtn_check(struct acpi_device *device)
{
 unsigned long long output;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "CRBT", ((void*)0), &output);
 if (ACPI_FAILURE(status))
  return RBTN_UNKNOWN;

 switch (output) {
 case 0:
 case 1:
  return RBTN_TOGGLE;
 case 2:
 case 3:
  return RBTN_SLIDER;
 default:
  return RBTN_UNKNOWN;
 }
}
