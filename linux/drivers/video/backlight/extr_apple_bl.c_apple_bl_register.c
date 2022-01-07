
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_bus_register_driver (int *) ;
 int apple_bl_driver ;
 int apple_bl_registered ;
 scalar_t__ atomic_xchg (int *,int) ;

int apple_bl_register(void)
{
 if (atomic_xchg(&apple_bl_registered, 1) == 0)
  return acpi_bus_register_driver(&apple_bl_driver);

 return 0;
}
