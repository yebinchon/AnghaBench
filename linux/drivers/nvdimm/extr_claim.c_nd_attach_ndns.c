
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dev; } ;
struct device {int dummy; } ;


 int __nd_attach_ndns (struct device*,struct nd_namespace_common*,struct nd_namespace_common**) ;
 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;

bool nd_attach_ndns(struct device *dev, struct nd_namespace_common *attach,
  struct nd_namespace_common **_ndns)
{
 bool claimed;

 nvdimm_bus_lock(&attach->dev);
 claimed = __nd_attach_ndns(dev, attach, _ndns);
 nvdimm_bus_unlock(&attach->dev);
 return claimed;
}
