
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int dummy; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 scalar_t__ is_nd_dax (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 struct nd_dax* to_nd_dax (struct device*) ;
 struct nd_pfn* to_nd_pfn (struct device*) ;

struct nd_pfn *to_nd_pfn_safe(struct device *dev)
{




 if (is_nd_pfn(dev))
  return to_nd_pfn(dev);

 if (is_nd_dax(dev)) {
  struct nd_dax *nd_dax = to_nd_dax(dev);

  return &nd_dax->nd_pfn;
 }

 WARN_ON(1);
 return ((void*)0);
}
