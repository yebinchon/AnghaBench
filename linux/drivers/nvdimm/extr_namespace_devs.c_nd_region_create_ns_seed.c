
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ns_seed; int dev; } ;


 scalar_t__ ND_DEVICE_NAMESPACE_IO ;
 int WARN_ON (int) ;
 int dev_err (int *,char*,char*) ;
 scalar_t__ is_nd_blk (int *) ;
 int is_nvdimm_bus_locked (int *) ;
 int nd_device_register (int ) ;
 int nd_namespace_blk_create (struct nd_region*) ;
 int nd_namespace_pmem_create (struct nd_region*) ;
 scalar_t__ nd_region_to_nstype (struct nd_region*) ;

void nd_region_create_ns_seed(struct nd_region *nd_region)
{
 WARN_ON(!is_nvdimm_bus_locked(&nd_region->dev));

 if (nd_region_to_nstype(nd_region) == ND_DEVICE_NAMESPACE_IO)
  return;

 if (is_nd_blk(&nd_region->dev))
  nd_region->ns_seed = nd_namespace_blk_create(nd_region);
 else
  nd_region->ns_seed = nd_namespace_pmem_create(nd_region);





 if (!nd_region->ns_seed)
  dev_err(&nd_region->dev, "failed to create %s namespace\n",
    is_nd_blk(&nd_region->dev) ? "blk" : "pmem");
 else
  nd_device_register(nd_region->ns_seed);
}
