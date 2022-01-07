
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
union acpi_object {TYPE_2__ integer; int type; } ;
typedef scalar_t__ u8 ;
struct guid_block {scalar_t__ instance_count; int flags; int object_id; } ;
struct wmi_block {scalar_t__ read_takes_no_args; TYPE_1__* acpi_device; struct guid_block gblock; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_3__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_WMI_EVENT ;
 int ACPI_WMI_EXPENSIVE ;
 int ACPI_WMI_METHOD ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_execute_simple_method (int ,char*,int) ;
 int strcpy (char*,char*) ;
 int strncat (char*,int ,int) ;

__attribute__((used)) static acpi_status __query_block(struct wmi_block *wblock, u8 instance,
     struct acpi_buffer *out)
{
 struct guid_block *block = ((void*)0);
 acpi_handle handle;
 acpi_status status, wc_status = AE_ERROR;
 struct acpi_object_list input;
 union acpi_object wq_params[1];
 char method[5];
 char wc_method[5] = "WC";

 if (!out)
  return AE_BAD_PARAMETER;

 block = &wblock->gblock;
 handle = wblock->acpi_device->handle;

 if (block->instance_count <= instance)
  return AE_BAD_PARAMETER;


 if (block->flags & (ACPI_WMI_EVENT | ACPI_WMI_METHOD))
  return AE_ERROR;

 input.count = 1;
 input.pointer = wq_params;
 wq_params[0].type = ACPI_TYPE_INTEGER;
 wq_params[0].integer.value = instance;

 if (instance == 0 && wblock->read_takes_no_args)
  input.count = 0;





 if (block->flags & ACPI_WMI_EXPENSIVE) {
  strncat(wc_method, block->object_id, 2);






  wc_status = acpi_execute_simple_method(handle, wc_method, 1);
 }

 strcpy(method, "WQ");
 strncat(method, block->object_id, 2);

 status = acpi_evaluate_object(handle, method, &input, out);





 if ((block->flags & ACPI_WMI_EXPENSIVE) && ACPI_SUCCESS(wc_status)) {
  status = acpi_execute_simple_method(handle, wc_method, 0);
 }

 return status;
}
