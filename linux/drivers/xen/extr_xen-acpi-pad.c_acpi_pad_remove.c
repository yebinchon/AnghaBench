
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_pad_notify ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xen_acpi_pad_idle_cpus (int ) ;
 int xen_cpu_lock ;

__attribute__((used)) static int acpi_pad_remove(struct acpi_device *device)
{
 mutex_lock(&xen_cpu_lock);
 xen_acpi_pad_idle_cpus(0);
 mutex_unlock(&xen_cpu_lock);

 acpi_remove_notify_handler(device->handle,
  ACPI_DEVICE_NOTIFY, acpi_pad_notify);
 return 0;
}
