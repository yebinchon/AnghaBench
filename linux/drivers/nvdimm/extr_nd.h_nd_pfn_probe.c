
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int nd_pfn_probe(struct device *dev,
  struct nd_namespace_common *ndns)
{
 return -ENODEV;
}
