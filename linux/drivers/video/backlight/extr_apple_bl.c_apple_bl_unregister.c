
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_bus_unregister_driver (int *) ;
 int apple_bl_driver ;
 int apple_bl_registered ;
 int atomic_xchg (int *,int ) ;

void apple_bl_unregister(void)
{
 if (atomic_xchg(&apple_bl_registered, 0) == 1)
  acpi_bus_unregister_driver(&apple_bl_driver);
}
