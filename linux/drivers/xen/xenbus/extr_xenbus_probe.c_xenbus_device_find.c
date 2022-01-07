
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct xb_find_info {char const* nodename; struct xenbus_device* dev; } ;
struct bus_type {int dummy; } ;


 int bus_for_each_dev (struct bus_type*,int *,struct xb_find_info*,int ) ;
 int cmp_dev ;

__attribute__((used)) static struct xenbus_device *xenbus_device_find(const char *nodename,
      struct bus_type *bus)
{
 struct xb_find_info info = { .dev = ((void*)0), .nodename = nodename };

 bus_for_each_dev(bus, ((void*)0), &info, cmp_dev);
 return info.dev;
}
