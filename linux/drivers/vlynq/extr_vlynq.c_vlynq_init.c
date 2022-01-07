
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int bus_unregister (int *) ;
 int platform_driver_register (int *) ;
 int vlynq_bus_type ;
 int vlynq_platform_driver ;

__attribute__((used)) static int vlynq_init(void)
{
 int res = 0;

 res = bus_register(&vlynq_bus_type);
 if (res)
  goto fail_bus;

 res = platform_driver_register(&vlynq_platform_driver);
 if (res)
  goto fail_platform;

 return 0;

fail_platform:
 bus_unregister(&vlynq_bus_type);
fail_bus:
 return res;
}
