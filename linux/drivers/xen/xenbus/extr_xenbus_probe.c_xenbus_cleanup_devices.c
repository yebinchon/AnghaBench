
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xb_find_info {char const* nodename; TYPE_1__* dev; } ;
struct bus_type {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int bus_for_each_dev (struct bus_type*,int *,struct xb_find_info*,int ) ;
 int cleanup_dev ;
 int device_unregister (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void xenbus_cleanup_devices(const char *path, struct bus_type *bus)
{
 struct xb_find_info info = { .nodename = path };

 do {
  info.dev = ((void*)0);
  bus_for_each_dev(bus, ((void*)0), &info, cleanup_dev);
  if (info.dev) {
   device_unregister(&info.dev->dev);
   put_device(&info.dev->dev);
  }
 } while (info.dev);
}
