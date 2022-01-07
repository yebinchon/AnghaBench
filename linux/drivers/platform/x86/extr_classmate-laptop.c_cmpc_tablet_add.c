
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int cmpc_add_acpi_notify_device (struct acpi_device*,char*,int ) ;
 int cmpc_tablet_idev_init ;

__attribute__((used)) static int cmpc_tablet_add(struct acpi_device *acpi)
{
 return cmpc_add_acpi_notify_device(acpi, "cmpc_tablet",
        cmpc_tablet_idev_init);
}
