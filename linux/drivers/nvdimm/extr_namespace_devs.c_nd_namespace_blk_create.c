
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_region {int dev; int id; int ns_ida; } ;
struct device {int groups; int * parent; int * type; } ;
struct TYPE_2__ {struct device dev; } ;
struct nd_namespace_blk {scalar_t__ id; TYPE_1__ common; } ;


 int GFP_KERNEL ;
 int dev_set_name (struct device*,char*,int ,scalar_t__) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int is_nd_blk (int *) ;
 int kfree (struct nd_namespace_blk*) ;
 struct nd_namespace_blk* kzalloc (int,int ) ;
 int namespace_blk_device_type ;
 int nd_namespace_attribute_groups ;

__attribute__((used)) static struct device *nd_namespace_blk_create(struct nd_region *nd_region)
{
 struct nd_namespace_blk *nsblk;
 struct device *dev;

 if (!is_nd_blk(&nd_region->dev))
  return ((void*)0);

 nsblk = kzalloc(sizeof(*nsblk), GFP_KERNEL);
 if (!nsblk)
  return ((void*)0);

 dev = &nsblk->common.dev;
 dev->type = &namespace_blk_device_type;
 nsblk->id = ida_simple_get(&nd_region->ns_ida, 0, 0, GFP_KERNEL);
 if (nsblk->id < 0) {
  kfree(nsblk);
  return ((void*)0);
 }
 dev_set_name(dev, "namespace%d.%d", nd_region->id, nsblk->id);
 dev->parent = &nd_region->dev;
 dev->groups = nd_namespace_attribute_groups;

 return &nsblk->common.dev;
}
