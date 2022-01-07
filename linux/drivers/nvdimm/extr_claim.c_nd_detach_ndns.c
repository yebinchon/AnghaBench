
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dev; } ;
struct device {int dummy; } ;


 int __nd_detach_ndns (struct device*,struct nd_namespace_common**) ;
 int get_device (int *) ;
 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;
 int put_device (int *) ;

void nd_detach_ndns(struct device *dev,
  struct nd_namespace_common **_ndns)
{
 struct nd_namespace_common *ndns = *_ndns;

 if (!ndns)
  return;
 get_device(&ndns->dev);
 nvdimm_bus_lock(&ndns->dev);
 __nd_detach_ndns(dev, _ndns);
 nvdimm_bus_unlock(&ndns->dev);
 put_device(&ndns->dev);
}
