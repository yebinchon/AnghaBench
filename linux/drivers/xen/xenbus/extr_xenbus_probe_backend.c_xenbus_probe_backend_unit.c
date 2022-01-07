
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_bus_type {int dummy; } ;


 int DPRINTK (char*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,char const*,char const*) ;
 int kfree (char*) ;
 int xenbus_probe_node (struct xen_bus_type*,char const*,char*) ;

__attribute__((used)) static int xenbus_probe_backend_unit(struct xen_bus_type *bus,
         const char *dir,
         const char *type,
         const char *name)
{
 char *nodename;
 int err;

 nodename = kasprintf(GFP_KERNEL, "%s/%s", dir, name);
 if (!nodename)
  return -ENOMEM;

 DPRINTK("%s\n", nodename);

 err = xenbus_probe_node(bus, type, nodename);
 kfree(nodename);
 return err;
}
