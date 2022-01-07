
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int length; scalar_t__ pointer; } ;
struct TYPE_5__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ buffer; TYPE_2__ package; } ;
struct int3400_thermal_priv {int uuid_bitmap; TYPE_1__* adev; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int guid_t ;
typedef int acpi_status ;
struct TYPE_4__ {int handle; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int EINVAL ;
 int ENODEV ;
 int INT3400_THERMAL_MAXIMUM_UUID ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 scalar_t__ guid_equal (int *,int *) ;
 int guid_parse (int ,int *) ;
 int * int3400_thermal_uuids ;
 int kfree (scalar_t__) ;

__attribute__((used)) static int int3400_thermal_get_uuids(struct int3400_thermal_priv *priv)
{
 struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object *obja, *objb;
 int i, j;
 int result = 0;
 acpi_status status;

 status = acpi_evaluate_object(priv->adev->handle, "IDSP", ((void*)0), &buf);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 obja = (union acpi_object *)buf.pointer;
 if (obja->type != ACPI_TYPE_PACKAGE) {
  result = -EINVAL;
  goto end;
 }

 for (i = 0; i < obja->package.count; i++) {
  objb = &obja->package.elements[i];
  if (objb->type != ACPI_TYPE_BUFFER) {
   result = -EINVAL;
   goto end;
  }


  if (objb->buffer.length != 16) {
   result = -EINVAL;
   goto end;
  }

  for (j = 0; j < INT3400_THERMAL_MAXIMUM_UUID; j++) {
   guid_t guid;

   guid_parse(int3400_thermal_uuids[j], &guid);
   if (guid_equal((guid_t *)objb->buffer.pointer, &guid)) {
    priv->uuid_bitmap |= (1 << j);
    break;
   }
  }
 }

end:
 kfree(buf.pointer);
 return result;
}
