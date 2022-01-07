
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_bus_register_driver (int *) ;
 int acpi_bus_unregister_driver (int *) ;
 int cmpc_accel_acpi_driver ;
 int cmpc_accel_acpi_driver_v4 ;
 int cmpc_ipml_acpi_driver ;
 int cmpc_keys_acpi_driver ;
 int cmpc_tablet_acpi_driver ;

__attribute__((used)) static int cmpc_init(void)
{
 int r;

 r = acpi_bus_register_driver(&cmpc_keys_acpi_driver);
 if (r)
  goto failed_keys;

 r = acpi_bus_register_driver(&cmpc_ipml_acpi_driver);
 if (r)
  goto failed_bl;

 r = acpi_bus_register_driver(&cmpc_tablet_acpi_driver);
 if (r)
  goto failed_tablet;

 r = acpi_bus_register_driver(&cmpc_accel_acpi_driver);
 if (r)
  goto failed_accel;

 r = acpi_bus_register_driver(&cmpc_accel_acpi_driver_v4);
 if (r)
  goto failed_accel_v4;

 return r;

failed_accel_v4:
 acpi_bus_unregister_driver(&cmpc_accel_acpi_driver);

failed_accel:
 acpi_bus_unregister_driver(&cmpc_tablet_acpi_driver);

failed_tablet:
 acpi_bus_unregister_driver(&cmpc_ipml_acpi_driver);

failed_bl:
 acpi_bus_unregister_driver(&cmpc_keys_acpi_driver);

failed_keys:
 return r;
}
