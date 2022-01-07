
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct device {int dummy; } ;


 struct nvdimm_drvdata* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int put_ndd (struct nvdimm_drvdata*) ;

__attribute__((used)) static int nvdimm_remove(struct device *dev)
{
 struct nvdimm_drvdata *ndd = dev_get_drvdata(dev);

 if (!ndd)
  return 0;

 nvdimm_bus_lock(dev);
 dev_set_drvdata(dev, ((void*)0));
 nvdimm_bus_unlock(dev);
 put_ndd(ndd);

 return 0;
}
