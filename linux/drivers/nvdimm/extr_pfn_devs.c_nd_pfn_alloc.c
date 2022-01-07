
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dev; int id; int pfn_ida; } ;
struct device {int * parent; int * type; int groups; } ;
struct nd_pfn {scalar_t__ id; struct device dev; } ;


 int GFP_KERNEL ;
 int dev_set_name (struct device*,char*,int ,scalar_t__) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nd_pfn*) ;
 struct nd_pfn* kzalloc (int,int ) ;
 int nd_pfn_attribute_groups ;
 int nd_pfn_device_type ;

__attribute__((used)) static struct nd_pfn *nd_pfn_alloc(struct nd_region *nd_region)
{
 struct nd_pfn *nd_pfn;
 struct device *dev;

 nd_pfn = kzalloc(sizeof(*nd_pfn), GFP_KERNEL);
 if (!nd_pfn)
  return ((void*)0);

 nd_pfn->id = ida_simple_get(&nd_region->pfn_ida, 0, 0, GFP_KERNEL);
 if (nd_pfn->id < 0) {
  kfree(nd_pfn);
  return ((void*)0);
 }

 dev = &nd_pfn->dev;
 dev_set_name(dev, "pfn%d.%d", nd_region->id, nd_pfn->id);
 dev->groups = nd_pfn_attribute_groups;
 dev->type = &nd_pfn_device_type;
 dev->parent = &nd_region->dev;

 return nd_pfn;
}
