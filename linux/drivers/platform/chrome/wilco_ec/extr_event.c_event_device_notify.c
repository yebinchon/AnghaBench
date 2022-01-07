
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef scalar_t__ u32 ;
struct ec_event {int dummy; } ;
struct acpi_device {int dev; int handle; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int EC_ACPI_GET_EVENT ;
 scalar_t__ EC_ACPI_NOTIFY_EVENT ;
 int acpi_evaluate_object (int ,int ,int *,struct acpi_buffer*) ;
 int dev_err (int *,char*,int,...) ;
 int enqueue_events (struct acpi_device*,int ,int) ;
 int kfree (union acpi_object*) ;

__attribute__((used)) static void event_device_notify(struct acpi_device *adev, u32 value)
{
 struct acpi_buffer event_buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;

 if (value != EC_ACPI_NOTIFY_EVENT) {
  dev_err(&adev->dev, "Invalid event: 0x%08x\n", value);
  return;
 }


 status = acpi_evaluate_object(adev->handle, EC_ACPI_GET_EVENT,
          ((void*)0), &event_buffer);
 if (ACPI_FAILURE(status)) {
  dev_err(&adev->dev, "Error executing ACPI method %s()\n",
   EC_ACPI_GET_EVENT);
  return;
 }

 obj = (union acpi_object *)event_buffer.pointer;
 if (!obj) {
  dev_err(&adev->dev, "Nothing returned from %s()\n",
   EC_ACPI_GET_EVENT);
  return;
 }
 if (obj->type != ACPI_TYPE_BUFFER) {
  dev_err(&adev->dev, "Invalid object returned from %s()\n",
   EC_ACPI_GET_EVENT);
  kfree(obj);
  return;
 }
 if (obj->buffer.length < sizeof(struct ec_event)) {
  dev_err(&adev->dev, "Invalid buffer length %d from %s()\n",
   obj->buffer.length, EC_ACPI_GET_EVENT);
  kfree(obj);
  return;
 }

 enqueue_events(adev, obj->buffer.pointer, obj->buffer.length);
 kfree(obj);
}
