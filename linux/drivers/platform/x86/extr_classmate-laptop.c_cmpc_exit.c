
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_bus_unregister_driver (int *) ;
 int cmpc_accel_acpi_driver ;
 int cmpc_accel_acpi_driver_v4 ;
 int cmpc_ipml_acpi_driver ;
 int cmpc_keys_acpi_driver ;
 int cmpc_tablet_acpi_driver ;

__attribute__((used)) static void cmpc_exit(void)
{
 acpi_bus_unregister_driver(&cmpc_accel_acpi_driver_v4);
 acpi_bus_unregister_driver(&cmpc_accel_acpi_driver);
 acpi_bus_unregister_driver(&cmpc_tablet_acpi_driver);
 acpi_bus_unregister_driver(&cmpc_ipml_acpi_driver);
 acpi_bus_unregister_driver(&cmpc_keys_acpi_driver);
}
