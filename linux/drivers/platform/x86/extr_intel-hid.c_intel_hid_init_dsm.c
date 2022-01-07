
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_BUFFER ;
 int HID_EVENT_FILTER_UUID ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int,int ,int *,int ) ;
 int acpi_handle_debug (int ,char*,int ) ;
 int guid_parse (int ,int *) ;
 int intel_dsm_guid ;
 int intel_hid_dsm_fn_mask ;

__attribute__((used)) static void intel_hid_init_dsm(acpi_handle handle)
{
 union acpi_object *obj;

 guid_parse(HID_EVENT_FILTER_UUID, &intel_dsm_guid);

 obj = acpi_evaluate_dsm_typed(handle, &intel_dsm_guid, 1, 0, ((void*)0),
          ACPI_TYPE_BUFFER);
 if (obj) {
  intel_hid_dsm_fn_mask = *obj->buffer.pointer;
  ACPI_FREE(obj);
 }

 acpi_handle_debug(handle, "intel_hid_dsm_fn_mask = %llx\n",
     intel_hid_dsm_fn_mask);
}
