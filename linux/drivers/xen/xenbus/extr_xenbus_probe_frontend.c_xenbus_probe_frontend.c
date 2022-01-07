
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_bus_type {int root; } ;


 int DPRINTK (char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,char const*,char const*) ;
 int kfree (char*) ;
 int strncmp (char const*,char*,int) ;
 int xenbus_probe_node (struct xen_bus_type*,char const*,char*) ;

__attribute__((used)) static int xenbus_probe_frontend(struct xen_bus_type *bus, const char *type,
     const char *name)
{
 char *nodename;
 int err;


 if (!strncmp(type, "console", 7) && !strncmp(name, "0", 1)) {
  DPRINTK("Ignoring buggy device entry console/0");
  return 0;
 }

 nodename = kasprintf(GFP_KERNEL, "%s/%s/%s", bus->root, type, name);
 if (!nodename)
  return -ENOMEM;

 DPRINTK("%s", nodename);

 err = xenbus_probe_node(bus, type, nodename);
 kfree(nodename);
 return err;
}
