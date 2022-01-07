
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int parport_bus_type ;

void parport_bus_exit(void)
{
 bus_unregister(&parport_bus_type);
}
