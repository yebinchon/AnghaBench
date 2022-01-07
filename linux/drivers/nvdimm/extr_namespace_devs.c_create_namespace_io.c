
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; int flags; int name; } ;
struct nd_region {scalar_t__ ndr_size; scalar_t__ ndr_start; int dev; } ;
struct device {int * parent; int * type; } ;
struct TYPE_2__ {struct device dev; } ;
struct nd_namespace_io {struct resource res; TYPE_1__ common; } ;


 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_name (int *) ;
 struct device** kcalloc (int,int,int ) ;
 int kfree (struct nd_namespace_io*) ;
 struct nd_namespace_io* kzalloc (int,int ) ;
 int namespace_io_device_type ;

__attribute__((used)) static struct device **create_namespace_io(struct nd_region *nd_region)
{
 struct nd_namespace_io *nsio;
 struct device *dev, **devs;
 struct resource *res;

 nsio = kzalloc(sizeof(*nsio), GFP_KERNEL);
 if (!nsio)
  return ((void*)0);

 devs = kcalloc(2, sizeof(struct device *), GFP_KERNEL);
 if (!devs) {
  kfree(nsio);
  return ((void*)0);
 }

 dev = &nsio->common.dev;
 dev->type = &namespace_io_device_type;
 dev->parent = &nd_region->dev;
 res = &nsio->res;
 res->name = dev_name(&nd_region->dev);
 res->flags = IORESOURCE_MEM;
 res->start = nd_region->ndr_start;
 res->end = res->start + nd_region->ndr_size - 1;

 devs[0] = dev;
 return devs;
}
