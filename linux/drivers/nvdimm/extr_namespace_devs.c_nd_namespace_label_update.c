
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nd_region {int dummy; } ;
struct TYPE_3__ {int res; } ;
struct nd_namespace_pmem {scalar_t__ uuid; TYPE_1__ nsio; } ;
struct nd_namespace_blk {int lbasize; scalar_t__ uuid; } ;
struct device {scalar_t__ driver; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_4__ {scalar_t__ claim; } ;


 int ENXIO ;
 int dev_WARN_ONCE (struct device*,int,char*) ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 int nd_blk_namespace_label_update (struct nd_region*,struct nd_namespace_blk*,scalar_t__) ;
 scalar_t__ nd_namespace_blk_size (struct nd_namespace_blk*) ;
 int nd_pmem_namespace_label_update (struct nd_region*,struct nd_namespace_pmem*,scalar_t__) ;
 scalar_t__ resource_size (int *) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;
 TYPE_2__* to_ndns (struct device*) ;

__attribute__((used)) static int nd_namespace_label_update(struct nd_region *nd_region,
  struct device *dev)
{
 dev_WARN_ONCE(dev, dev->driver || to_ndns(dev)->claim,
   "namespace must be idle during label update\n");
 if (dev->driver || to_ndns(dev)->claim)
  return 0;





 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);
  resource_size_t size = resource_size(&nspm->nsio.res);

  if (size == 0 && nspm->uuid)
                          ;
  else if (!nspm->uuid)
   return 0;

  return nd_pmem_namespace_label_update(nd_region, nspm, size);
 } else if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);
  resource_size_t size = nd_namespace_blk_size(nsblk);

  if (size == 0 && nsblk->uuid)
                          ;
  else if (!nsblk->uuid || !nsblk->lbasize)
   return 0;

  return nd_blk_namespace_label_update(nd_region, nsblk, size);
 } else
  return -ENXIO;
}
