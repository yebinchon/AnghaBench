
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;


 int mdev_bus_type ;
 struct bus_type* symbol_get (int ) ;
 int symbol_put (int ) ;

__attribute__((used)) static bool vfio_bus_is_mdev(struct bus_type *bus)
{
 struct bus_type *mdev_bus;
 bool ret = 0;

 mdev_bus = symbol_get(mdev_bus_type);
 if (mdev_bus) {
  ret = (bus == mdev_bus);
  symbol_put(mdev_bus_type);
 }

 return ret;
}
