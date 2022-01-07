
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dev; } ;
struct nd_dax {int nd_pfn; } ;
struct device {int dummy; } ;


 int __nd_device_register (struct device*) ;
 int is_memory (int *) ;
 struct nd_dax* nd_dax_alloc (struct nd_region*) ;
 struct device* nd_pfn_devinit (int *,int *) ;

struct device *nd_dax_create(struct nd_region *nd_region)
{
 struct device *dev = ((void*)0);
 struct nd_dax *nd_dax;

 if (!is_memory(&nd_region->dev))
  return ((void*)0);

 nd_dax = nd_dax_alloc(nd_region);
 if (nd_dax)
  dev = nd_pfn_devinit(&nd_dax->nd_pfn, ((void*)0));
 __nd_device_register(dev);
 return dev;
}
