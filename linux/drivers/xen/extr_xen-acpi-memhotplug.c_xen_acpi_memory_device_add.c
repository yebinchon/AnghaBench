
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_memory_device {struct acpi_device* device; int res_list; } ;
struct acpi_device {struct acpi_memory_device* driver_data; } ;


 char* ACPI_MEMORY_DEVICE_CLASS ;
 char* ACPI_MEMORY_DEVICE_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_hotmem_initialized ;
 int acpi_memory_check_device (struct acpi_memory_device*) ;
 int acpi_memory_get_device_resources (struct acpi_memory_device*) ;
 int kfree (struct acpi_memory_device*) ;
 struct acpi_memory_device* kzalloc (int,int ) ;
 int sprintf (int ,char*,char*) ;
 int xen_acpi_memory_enable_device (struct acpi_memory_device*) ;

__attribute__((used)) static int xen_acpi_memory_device_add(struct acpi_device *device)
{
 int result;
 struct acpi_memory_device *mem_device = ((void*)0);


 if (!device)
  return -EINVAL;

 mem_device = kzalloc(sizeof(struct acpi_memory_device), GFP_KERNEL);
 if (!mem_device)
  return -ENOMEM;

 INIT_LIST_HEAD(&mem_device->res_list);
 mem_device->device = device;
 sprintf(acpi_device_name(device), "%s", ACPI_MEMORY_DEVICE_NAME);
 sprintf(acpi_device_class(device), "%s", ACPI_MEMORY_DEVICE_CLASS);
 device->driver_data = mem_device;


 result = acpi_memory_get_device_resources(mem_device);
 if (result) {
  kfree(mem_device);
  return result;
 }
 if (!acpi_hotmem_initialized)
  return 0;

 if (!acpi_memory_check_device(mem_device))
  result = xen_acpi_memory_enable_device(mem_device);

 return result;
}
