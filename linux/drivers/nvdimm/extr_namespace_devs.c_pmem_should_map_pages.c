
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_region {int flags; } ;
struct TYPE_2__ {int start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {scalar_t__ force_raw; } ;
struct device {int parent; } ;


 scalar_t__ ARCH_MEMREMAP_PMEM ;
 int CONFIG_ZONE_DEVICE ;
 int IORESOURCE_SYSTEM_RAM ;
 int IORES_DESC_NONE ;
 int IS_ENABLED (int ) ;
 scalar_t__ MEMREMAP_WB ;
 int ND_REGION_PAGEMAP ;
 scalar_t__ REGION_MIXED ;
 scalar_t__ is_nd_btt (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 scalar_t__ region_intersects (int ,int ,int ,int ) ;
 int resource_size (TYPE_1__*) ;
 int test_bit (int ,int *) ;
 struct nd_namespace_io* to_nd_namespace_io (struct device*) ;
 struct nd_region* to_nd_region (int ) ;
 struct nd_namespace_common* to_ndns (struct device*) ;

bool pmem_should_map_pages(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 struct nd_namespace_common *ndns = to_ndns(dev);
 struct nd_namespace_io *nsio;

 if (!IS_ENABLED(CONFIG_ZONE_DEVICE))
  return 0;

 if (!test_bit(ND_REGION_PAGEMAP, &nd_region->flags))
  return 0;

 if (is_nd_pfn(dev) || is_nd_btt(dev))
  return 0;

 if (ndns->force_raw)
  return 0;

 nsio = to_nd_namespace_io(dev);
 if (region_intersects(nsio->res.start, resource_size(&nsio->res),
    IORESOURCE_SYSTEM_RAM,
    IORES_DESC_NONE) == REGION_MIXED)
  return 0;

 return ARCH_MEMREMAP_PMEM == MEMREMAP_WB;
}
