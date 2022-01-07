
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nd_region {int btt_ida; int dev; int id; } ;
struct nd_namespace_common {int claim; int dev; } ;
struct device {int groups; int * type; int * parent; } ;
struct nd_btt {scalar_t__ id; unsigned long lbasize; int ndns; struct device dev; int * uuid; } ;


 int GFP_KERNEL ;
 int __nd_attach_ndns (struct device*,struct nd_namespace_common*,int *) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_name (int ) ;
 int dev_set_name (struct device*,char*,int ,scalar_t__) ;
 int device_initialize (struct device*) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct nd_btt*) ;
 int * kmemdup (int *,int,int ) ;
 struct nd_btt* kzalloc (int,int ) ;
 int nd_btt_attribute_groups ;
 int nd_btt_device_type ;
 int put_device (struct device*) ;

__attribute__((used)) static struct device *__nd_btt_create(struct nd_region *nd_region,
  unsigned long lbasize, u8 *uuid,
  struct nd_namespace_common *ndns)
{
 struct nd_btt *nd_btt;
 struct device *dev;

 nd_btt = kzalloc(sizeof(*nd_btt), GFP_KERNEL);
 if (!nd_btt)
  return ((void*)0);

 nd_btt->id = ida_simple_get(&nd_region->btt_ida, 0, 0, GFP_KERNEL);
 if (nd_btt->id < 0)
  goto out_nd_btt;

 nd_btt->lbasize = lbasize;
 if (uuid) {
  uuid = kmemdup(uuid, 16, GFP_KERNEL);
  if (!uuid)
   goto out_put_id;
 }
 nd_btt->uuid = uuid;
 dev = &nd_btt->dev;
 dev_set_name(dev, "btt%d.%d", nd_region->id, nd_btt->id);
 dev->parent = &nd_region->dev;
 dev->type = &nd_btt_device_type;
 dev->groups = nd_btt_attribute_groups;
 device_initialize(&nd_btt->dev);
 if (ndns && !__nd_attach_ndns(&nd_btt->dev, ndns, &nd_btt->ndns)) {
  dev_dbg(&ndns->dev, "failed, already claimed by %s\n",
    dev_name(ndns->claim));
  put_device(dev);
  return ((void*)0);
 }
 return dev;

out_put_id:
 ida_simple_remove(&nd_region->btt_ida, nd_btt->id);

out_nd_btt:
 kfree(nd_btt);
 return ((void*)0);
}
