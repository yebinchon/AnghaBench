
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int flags; int name; } ;
struct nd_region {int id; int ns_ida; int dev; } ;
struct device {int groups; int * parent; int * type; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {struct resource res; TYPE_1__ common; } ;
struct nd_namespace_pmem {scalar_t__ id; TYPE_2__ nsio; } ;


 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_name (int *) ;
 int dev_set_name (struct device*,char*,int ,scalar_t__) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int is_memory (int *) ;
 int kfree (struct nd_namespace_pmem*) ;
 struct nd_namespace_pmem* kzalloc (int,int ) ;
 int namespace_pmem_device_type ;
 int nd_namespace_attribute_groups ;
 int nd_namespace_pmem_set_resource (struct nd_region*,struct nd_namespace_pmem*,int ) ;

__attribute__((used)) static struct device *nd_namespace_pmem_create(struct nd_region *nd_region)
{
 struct nd_namespace_pmem *nspm;
 struct resource *res;
 struct device *dev;

 if (!is_memory(&nd_region->dev))
  return ((void*)0);

 nspm = kzalloc(sizeof(*nspm), GFP_KERNEL);
 if (!nspm)
  return ((void*)0);

 dev = &nspm->nsio.common.dev;
 dev->type = &namespace_pmem_device_type;
 dev->parent = &nd_region->dev;
 res = &nspm->nsio.res;
 res->name = dev_name(&nd_region->dev);
 res->flags = IORESOURCE_MEM;

 nspm->id = ida_simple_get(&nd_region->ns_ida, 0, 0, GFP_KERNEL);
 if (nspm->id < 0) {
  kfree(nspm);
  return ((void*)0);
 }
 dev_set_name(dev, "namespace%d.%d", nd_region->id, nspm->id);
 dev->groups = nd_namespace_attribute_groups;
 nd_namespace_pmem_set_resource(nd_region, nspm, 0);

 return dev;
}
