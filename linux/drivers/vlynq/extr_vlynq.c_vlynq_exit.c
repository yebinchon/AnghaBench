
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int platform_driver_unregister (int *) ;
 int vlynq_bus_type ;
 int vlynq_platform_driver ;

__attribute__((used)) static void vlynq_exit(void)
{
 platform_driver_unregister(&vlynq_platform_driver);
 bus_unregister(&vlynq_bus_type);
}
