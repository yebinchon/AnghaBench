
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ns_ida; } ;
struct nd_namespace_blk {scalar_t__ id; struct nd_namespace_blk* res; struct nd_namespace_blk* uuid; struct nd_namespace_blk* alt_name; } ;
struct device {int parent; } ;


 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct nd_namespace_blk*) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static void namespace_blk_release(struct device *dev)
{
 struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);
 struct nd_region *nd_region = to_nd_region(dev->parent);

 if (nsblk->id >= 0)
  ida_simple_remove(&nd_region->ns_ida, nsblk->id);
 kfree(nsblk->alt_name);
 kfree(nsblk->uuid);
 kfree(nsblk->res);
 kfree(nsblk);
}
