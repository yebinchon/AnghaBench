
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long value; } ;
union acpi_object {TYPE_1__ integer; } ;
typedef enum intel_hid_dsm_fn_codes { ____Placeholder_intel_hid_dsm_fn_codes } intel_hid_dsm_fn_codes ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_INTEGER ;
 int INTEL_HID_DSM_FN_INVALID ;
 int INTEL_HID_DSM_FN_MAX ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int,int,int *,int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_handle_debug (int ,char*,int,char*,unsigned long long) ;
 int intel_dsm_guid ;
 int intel_hid_dsm_fn_mask ;
 scalar_t__* intel_hid_dsm_fn_to_method ;

__attribute__((used)) static bool intel_hid_evaluate_method(acpi_handle handle,
          enum intel_hid_dsm_fn_codes fn_index,
          unsigned long long *result)
{
 union acpi_object *obj;
 acpi_status status;
 char *method_name;

 if (fn_index <= INTEL_HID_DSM_FN_INVALID ||
     fn_index >= INTEL_HID_DSM_FN_MAX)
  return 0;

 method_name = (char *)intel_hid_dsm_fn_to_method[fn_index];

 if (!(intel_hid_dsm_fn_mask & fn_index))
  goto skip_dsm_eval;

 obj = acpi_evaluate_dsm_typed(handle, &intel_dsm_guid,
          1, fn_index,
          ((void*)0), ACPI_TYPE_INTEGER);
 if (obj) {
  *result = obj->integer.value;
  acpi_handle_debug(handle,
      "Eval DSM Fn code: %d[%s] results: 0x%llx\n",
      fn_index, method_name, *result);
  ACPI_FREE(obj);
  return 1;
 }

skip_dsm_eval:
 status = acpi_evaluate_integer(handle, method_name, ((void*)0), result);
 if (ACPI_SUCCESS(status))
  return 1;

 return 0;
}
