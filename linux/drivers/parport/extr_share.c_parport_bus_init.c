
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int parport_bus_type ;

int parport_bus_init(void)
{
 return bus_register(&parport_bus_type);
}
