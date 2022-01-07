
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int mdev_bus_type ;

int mdev_bus_register(void)
{
 return bus_register(&mdev_bus_type);
}
