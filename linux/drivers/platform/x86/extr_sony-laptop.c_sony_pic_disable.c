
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 int ENXIO ;
 scalar_t__ acpi_evaluate_object (int ,char*,int *,int *) ;
 int dprintk (char*) ;

__attribute__((used)) static int sony_pic_disable(struct acpi_device *device)
{
 acpi_status ret = acpi_evaluate_object(device->handle, "_DIS", ((void*)0),
            ((void*)0));

 if (ACPI_FAILURE(ret) && ret != AE_NOT_FOUND)
  return -ENXIO;

 dprintk("Device disabled\n");
 return 0;
}
