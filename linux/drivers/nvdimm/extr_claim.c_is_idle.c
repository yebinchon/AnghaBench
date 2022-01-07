
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {struct device* dax_seed; struct device* pfn_seed; struct device* btt_seed; } ;
struct nd_namespace_common {int dummy; } ;
struct device {scalar_t__ driver; int parent; } ;


 scalar_t__ is_nd_btt (struct device*) ;
 scalar_t__ is_nd_dax (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static bool is_idle(struct device *dev, struct nd_namespace_common *ndns)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 struct device *seed = ((void*)0);

 if (is_nd_btt(dev))
  seed = nd_region->btt_seed;
 else if (is_nd_pfn(dev))
  seed = nd_region->pfn_seed;
 else if (is_nd_dax(dev))
  seed = nd_region->dax_seed;

 if (seed == dev || ndns || dev->driver)
  return 0;
 return 1;
}
