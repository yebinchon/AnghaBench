
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {unsigned long long value; } ;
union acpi_object {TYPE_2__ package; int type; TYPE_1__ integer; } ;
typedef enum intel_hid_dsm_fn_codes { ____Placeholder_intel_hid_dsm_fn_codes } intel_hid_dsm_fn_codes ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int INTEL_HID_DSM_FN_INVALID ;
 int INTEL_HID_DSM_FN_MAX ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int,int,union acpi_object*) ;
 int acpi_execute_simple_method (int ,char*,unsigned long long) ;
 int acpi_handle_debug (int ,char*,int,char*) ;
 int intel_dsm_guid ;
 int intel_hid_dsm_fn_mask ;
 scalar_t__* intel_hid_dsm_fn_to_method ;

__attribute__((used)) static bool intel_hid_execute_method(acpi_handle handle,
         enum intel_hid_dsm_fn_codes fn_index,
         unsigned long long arg)
{
 union acpi_object *obj, argv4, req;
 acpi_status status;
 char *method_name;

 if (fn_index <= INTEL_HID_DSM_FN_INVALID ||
     fn_index >= INTEL_HID_DSM_FN_MAX)
  return 0;

 method_name = (char *)intel_hid_dsm_fn_to_method[fn_index];

 if (!(intel_hid_dsm_fn_mask & fn_index))
  goto skip_dsm_exec;


 req.type = ACPI_TYPE_INTEGER;
 req.integer.value = arg;

 argv4.type = ACPI_TYPE_PACKAGE;
 argv4.package.count = 1;
 argv4.package.elements = &req;

 obj = acpi_evaluate_dsm(handle, &intel_dsm_guid, 1, fn_index, &argv4);
 if (obj) {
  acpi_handle_debug(handle, "Exec DSM Fn code: %d[%s] success\n",
      fn_index, method_name);
  ACPI_FREE(obj);
  return 1;
 }

skip_dsm_exec:
 status = acpi_execute_simple_method(handle, method_name, arg);
 if (ACPI_SUCCESS(status))
  return 1;

 return 0;
}
