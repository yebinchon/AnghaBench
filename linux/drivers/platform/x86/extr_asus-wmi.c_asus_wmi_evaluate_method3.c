
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
typedef scalar_t__ u32 ;
struct bios_args {scalar_t__ arg0; scalar_t__ arg1; scalar_t__ arg2; } ;
struct acpi_buffer {scalar_t__ pointer; struct bios_args* member_1; int member_0; } ;
typedef int args ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ASUS_WMI_MGMT_GUID ;
 scalar_t__ ASUS_WMI_UNSUPPORTED_METHOD ;
 int EIO ;
 int ENODEV ;
 int kfree (union acpi_object*) ;
 int wmi_evaluate_method (int ,int ,scalar_t__,struct acpi_buffer*,struct acpi_buffer*) ;

__attribute__((used)) static int asus_wmi_evaluate_method3(u32 method_id,
  u32 arg0, u32 arg1, u32 arg2, u32 *retval)
{
 struct bios_args args = {
  .arg0 = arg0,
  .arg1 = arg1,
  .arg2 = arg2,
 };
 struct acpi_buffer input = { (acpi_size) sizeof(args), &args };
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 acpi_status status;
 union acpi_object *obj;
 u32 tmp = 0;

 status = wmi_evaluate_method(ASUS_WMI_MGMT_GUID, 0, method_id,
         &input, &output);

 if (ACPI_FAILURE(status))
  return -EIO;

 obj = (union acpi_object *)output.pointer;
 if (obj && obj->type == ACPI_TYPE_INTEGER)
  tmp = (u32) obj->integer.value;

 if (retval)
  *retval = tmp;

 kfree(obj);

 if (tmp == ASUS_WMI_UNSUPPORTED_METHOD)
  return -ENODEV;

 return 0;
}
