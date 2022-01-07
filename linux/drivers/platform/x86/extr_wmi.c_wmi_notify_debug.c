
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int count; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int pointer; } ;
struct TYPE_5__ {int length; } ;
union acpi_object {int type; TYPE_4__ package; TYPE_3__ integer; TYPE_2__ string; TYPE_1__ buffer; } ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;




 scalar_t__ AE_OK ;
 int kfree (union acpi_object*) ;
 int pr_cont (char*,int) ;
 int pr_info (char*,...) ;
 scalar_t__ wmi_get_event_data (int ,struct acpi_buffer*) ;

__attribute__((used)) static void wmi_notify_debug(u32 value, void *context)
{
 struct acpi_buffer response = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;

 status = wmi_get_event_data(value, &response);
 if (status != AE_OK) {
  pr_info("bad event status 0x%x\n", status);
  return;
 }

 obj = (union acpi_object *)response.pointer;

 if (!obj)
  return;

 pr_info("DEBUG Event ");
 switch(obj->type) {
 case 131:
  pr_cont("BUFFER_TYPE - length %d\n", obj->buffer.length);
  break;
 case 128:
  pr_cont("STRING_TYPE - %s\n", obj->string.pointer);
  break;
 case 130:
  pr_cont("INTEGER_TYPE - %llu\n", obj->integer.value);
  break;
 case 129:
  pr_cont("PACKAGE_TYPE - %d elements\n", obj->package.count);
  break;
 default:
  pr_cont("object type 0x%X\n", obj->type);
 }
 kfree(obj);
}
