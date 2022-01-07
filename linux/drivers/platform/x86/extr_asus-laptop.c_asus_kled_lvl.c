
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct asus_laptop {int handle; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ENODEV ;
 int METHOD_KBD_LIGHT_GET ;
 int acpi_evaluate_integer (int ,int ,struct acpi_object_list*,unsigned long long*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int asus_kled_lvl(struct asus_laptop *asus)
{
 unsigned long long kblv;
 struct acpi_object_list params;
 union acpi_object in_obj;
 acpi_status rv;

 params.count = 1;
 params.pointer = &in_obj;
 in_obj.type = ACPI_TYPE_INTEGER;
 in_obj.integer.value = 2;

 rv = acpi_evaluate_integer(asus->handle, METHOD_KBD_LIGHT_GET,
       &params, &kblv);
 if (ACPI_FAILURE(rv)) {
  pr_warn("Error reading kled level\n");
  return -ENODEV;
 }
 return kblv;
}
