
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dev; } ;
struct nd_pfn {int dummy; } ;
struct device {int dummy; } ;


 int __nd_device_register (struct device*) ;
 int is_memory (int *) ;
 struct nd_pfn* nd_pfn_alloc (struct nd_region*) ;
 struct device* nd_pfn_devinit (struct nd_pfn*,int *) ;

struct device *nd_pfn_create(struct nd_region *nd_region)
{
 struct nd_pfn *nd_pfn;
 struct device *dev;

 if (!is_memory(&nd_region->dev))
  return ((void*)0);

 nd_pfn = nd_pfn_alloc(nd_region);
 dev = nd_pfn_devinit(nd_pfn, ((void*)0));

 __nd_device_register(dev);
 return dev;
}
