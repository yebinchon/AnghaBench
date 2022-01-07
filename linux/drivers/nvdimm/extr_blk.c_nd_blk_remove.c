
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ is_nd_btt (struct device*) ;
 int nvdimm_namespace_detach_btt (int ) ;
 int to_nd_btt (struct device*) ;

__attribute__((used)) static int nd_blk_remove(struct device *dev)
{
 if (is_nd_btt(dev))
  nvdimm_namespace_detach_btt(to_nd_btt(dev));
 return 0;
}
