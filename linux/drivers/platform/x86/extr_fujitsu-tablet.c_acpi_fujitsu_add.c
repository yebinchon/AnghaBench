
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dev; int handle; } ;
typedef int acpi_status ;
struct TYPE_2__ {int io_length; int io_base; int irq; int phys; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 char* ACPI_FUJITSU_CLASS ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int IRQF_SHARED ;
 int METHOD_NAME__CRS ;
 int MODULENAME ;
 int acpi_device_class (struct acpi_device*) ;
 char* acpi_device_hid (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_walk_resources (int ,int ,int ,int *) ;
 TYPE_1__ fujitsu ;
 int fujitsu_interrupt ;
 int fujitsu_reset () ;
 int fujitsu_walk_resources ;
 int input_fujitsu_remove () ;
 int input_fujitsu_setup (int *,int ,int ) ;
 int release_region (int ,int ) ;
 int request_irq (int ,int ,int ,int ,int ) ;
 int request_region (int ,int ,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int acpi_fujitsu_add(struct acpi_device *adev)
{
 acpi_status status;
 int error;

 if (!adev)
  return -EINVAL;

 status = acpi_walk_resources(adev->handle, METHOD_NAME__CRS,
   fujitsu_walk_resources, ((void*)0));
 if (ACPI_FAILURE(status) || !fujitsu.irq || !fujitsu.io_base)
  return -ENODEV;

 sprintf(acpi_device_name(adev), "Fujitsu %s", acpi_device_hid(adev));
 sprintf(acpi_device_class(adev), "%s", ACPI_FUJITSU_CLASS);

 snprintf(fujitsu.phys, sizeof(fujitsu.phys),
   "%s/input0", acpi_device_hid(adev));

 error = input_fujitsu_setup(&adev->dev,
  acpi_device_name(adev), fujitsu.phys);
 if (error)
  return error;

 if (!request_region(fujitsu.io_base, fujitsu.io_length, MODULENAME)) {
  input_fujitsu_remove();
  return -EBUSY;
 }

 fujitsu_reset();

 error = request_irq(fujitsu.irq, fujitsu_interrupt,
   IRQF_SHARED, MODULENAME, fujitsu_interrupt);
 if (error) {
  release_region(fujitsu.io_base, fujitsu.io_length);
  input_fujitsu_remove();
  return error;
 }

 return 0;
}
