
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {int parent; } ;
struct nd_namespace_common {TYPE_1__ dev; int rw_bytes; } ;
struct nd_namespace_io {int addr; struct resource res; int bb; int size; struct nd_namespace_common common; } ;
struct device {int dummy; } ;


 int ARCH_MEMREMAP_PMEM ;
 int EBUSY ;
 int ENOMEM ;
 int PTR_ERR_OR_ZERO (int ) ;
 int dev_name (TYPE_1__*) ;
 int dev_warn (struct device*,char*,struct resource*) ;
 scalar_t__ devm_init_badblocks (struct device*,int *) ;
 int devm_memremap (struct device*,int ,int ,int ) ;
 int devm_request_mem_region (struct device*,int ,int ,int ) ;
 int nsio_rw_bytes ;
 int nvdimm_badblocks_populate (int ,int *,struct resource*) ;
 int resource_size (struct resource*) ;
 int to_nd_region (int ) ;

int devm_nsio_enable(struct device *dev, struct nd_namespace_io *nsio)
{
 struct resource *res = &nsio->res;
 struct nd_namespace_common *ndns = &nsio->common;

 nsio->size = resource_size(res);
 if (!devm_request_mem_region(dev, res->start, resource_size(res),
    dev_name(&ndns->dev))) {
  dev_warn(dev, "could not reserve region %pR\n", res);
  return -EBUSY;
 }

 ndns->rw_bytes = nsio_rw_bytes;
 if (devm_init_badblocks(dev, &nsio->bb))
  return -ENOMEM;
 nvdimm_badblocks_populate(to_nd_region(ndns->dev.parent), &nsio->bb,
   &nsio->res);

 nsio->addr = devm_memremap(dev, res->start, resource_size(res),
   ARCH_MEMREMAP_PMEM);

 return PTR_ERR_OR_ZERO(nsio->addr);
}
