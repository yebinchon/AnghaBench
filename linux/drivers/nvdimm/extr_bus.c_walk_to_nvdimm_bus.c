
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dummy; } ;
struct device {struct device* parent; } ;


 int dev_WARN_ONCE (struct device*,int,char*) ;
 scalar_t__ is_nvdimm_bus (struct device*) ;
 struct nvdimm_bus* to_nvdimm_bus (struct device*) ;

struct nvdimm_bus *walk_to_nvdimm_bus(struct device *nd_dev)
{
 struct device *dev;

 for (dev = nd_dev; dev; dev = dev->parent)
  if (is_nvdimm_bus(dev))
   break;
 dev_WARN_ONCE(nd_dev, !dev, "invalid dev, not on nd bus\n");
 if (dev)
  return to_nvdimm_bus(dev);
 return ((void*)0);
}
