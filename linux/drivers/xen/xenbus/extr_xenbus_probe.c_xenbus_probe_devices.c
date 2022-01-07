
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_bus_type {int root; } ;


 scalar_t__ IS_ERR (char**) ;
 int PTR_ERR (char**) ;
 int XBT_NIL ;
 int kfree (char**) ;
 char** xenbus_directory (int ,int ,char*,unsigned int*) ;
 int xenbus_probe_device_type (struct xen_bus_type*,char*) ;

int xenbus_probe_devices(struct xen_bus_type *bus)
{
 int err = 0;
 char **dir;
 unsigned int i, dir_n;

 dir = xenbus_directory(XBT_NIL, bus->root, "", &dir_n);
 if (IS_ERR(dir))
  return PTR_ERR(dir);

 for (i = 0; i < dir_n; i++) {
  err = xenbus_probe_device_type(bus, dir[i]);
  if (err)
   break;
 }

 kfree(dir);
 return err;
}
