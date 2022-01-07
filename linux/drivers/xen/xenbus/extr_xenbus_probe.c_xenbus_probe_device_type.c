
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_bus_type {int (* probe ) (struct xen_bus_type*,char const*,char*) ;int root; } ;


 scalar_t__ IS_ERR (char**) ;
 int PTR_ERR (char**) ;
 int XBT_NIL ;
 int kfree (char**) ;
 int stub1 (struct xen_bus_type*,char const*,char*) ;
 char** xenbus_directory (int ,int ,char const*,unsigned int*) ;

__attribute__((used)) static int xenbus_probe_device_type(struct xen_bus_type *bus, const char *type)
{
 int err = 0;
 char **dir;
 unsigned int dir_n = 0;
 int i;

 dir = xenbus_directory(XBT_NIL, bus->root, type, &dir_n);
 if (IS_ERR(dir))
  return PTR_ERR(dir);

 for (i = 0; i < dir_n; i++) {
  err = bus->probe(bus, type, dir[i]);
  if (err)
   break;
 }

 kfree(dir);
 return err;
}
