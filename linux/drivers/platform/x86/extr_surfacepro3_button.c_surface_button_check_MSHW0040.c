
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {TYPE_1__ integer; } ;
typedef scalar_t__ u64 ;
struct acpi_device {int dev; int handle; } ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_INTEGER ;
 int MSHW0040_DSM_GET_OMPR ;
 int MSHW0040_DSM_REVISION ;
 int MSHW0040_DSM_UUID ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int ,int ,int *,int ) ;
 int dev_dbg (int *,char*,scalar_t__) ;

__attribute__((used)) static bool surface_button_check_MSHW0040(struct acpi_device *dev)
{
 acpi_handle handle = dev->handle;
 union acpi_object *result;
 u64 oem_platform_rev = 0;


 result = acpi_evaluate_dsm_typed(handle, &MSHW0040_DSM_UUID,
      MSHW0040_DSM_REVISION,
      MSHW0040_DSM_GET_OMPR,
      ((void*)0), ACPI_TYPE_INTEGER);
 if (result) {
  oem_platform_rev = result->integer.value;
  ACPI_FREE(result);
 }

 dev_dbg(&dev->dev, "OEM Platform Revision %llu\n", oem_platform_rev);

 return oem_platform_rev == 0;
}
