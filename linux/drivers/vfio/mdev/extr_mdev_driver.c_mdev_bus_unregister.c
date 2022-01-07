
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int mdev_bus_type ;

void mdev_bus_unregister(void)
{
 bus_unregister(&mdev_bus_type);
}
