
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
typedef int u64 ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,int ,struct acpi_object_list*,int*) ;
 int acpi_handle_debug (int ,char*,char const*,int) ;
 int acpi_handle_err (int ,char*,char const*,int,int ) ;

__attribute__((used)) static acpi_status asus_wireless_method(acpi_handle handle, const char *method,
     int param, u64 *ret)
{
 struct acpi_object_list p;
 union acpi_object obj;
 acpi_status s;

 acpi_handle_debug(handle, "Evaluating method %s, parameter %#x\n",
     method, param);
 obj.type = ACPI_TYPE_INTEGER;
 obj.integer.value = param;
 p.count = 1;
 p.pointer = &obj;

 s = acpi_evaluate_integer(handle, (acpi_string) method, &p, ret);
 if (ACPI_FAILURE(s))
  acpi_handle_err(handle,
    "Failed to eval method %s, param %#x (%d)\n",
    method, param, s);
 else
  acpi_handle_debug(handle, "%s returned %#llx\n", method, *ret);

 return s;
}
