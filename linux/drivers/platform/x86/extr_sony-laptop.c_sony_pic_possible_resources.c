
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct acpi_device {int handle; TYPE_1__ status; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int METHOD_NAME__PRS ;
 int acpi_bus_get_status (struct acpi_device*) ;
 int acpi_walk_resources (int ,int ,int ,int *) ;
 int dprintk (char*,...) ;
 int pr_warn (char*,...) ;
 int sony_pic_read_possible_resource ;
 int spic_dev ;

__attribute__((used)) static int sony_pic_possible_resources(struct acpi_device *device)
{
 int result = 0;
 acpi_status status = AE_OK;

 if (!device)
  return -EINVAL;



 dprintk("Evaluating _STA\n");
 result = acpi_bus_get_status(device);
 if (result) {
  pr_warn("Unable to read status\n");
  goto end;
 }

 if (!device->status.enabled)
  dprintk("Device disabled\n");
 else
  dprintk("Device enabled\n");




 dprintk("Evaluating %s\n", METHOD_NAME__PRS);
 status = acpi_walk_resources(device->handle, METHOD_NAME__PRS,
   sony_pic_read_possible_resource, &spic_dev);
 if (ACPI_FAILURE(status)) {
  pr_warn("Failure evaluating %s\n", METHOD_NAME__PRS);
  result = -ENODEV;
 }
end:
 return result;
}
