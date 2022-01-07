
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int nd_desc; int list; } ;
struct device {int dummy; } ;


 int dev_set_drvdata (struct device*,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvdimm_bus_create_ndctl (struct nvdimm_bus*) ;
 int nvdimm_bus_list ;
 int nvdimm_bus_list_mutex ;
 struct nvdimm_bus* to_nvdimm_bus (struct device*) ;

__attribute__((used)) static int nd_bus_probe(struct device *dev)
{
 struct nvdimm_bus *nvdimm_bus = to_nvdimm_bus(dev);
 int rc;

 rc = nvdimm_bus_create_ndctl(nvdimm_bus);
 if (rc)
  return rc;

 mutex_lock(&nvdimm_bus_list_mutex);
 list_add_tail(&nvdimm_bus->list, &nvdimm_bus_list);
 mutex_unlock(&nvdimm_bus_list_mutex);


 dev_set_drvdata(dev, nvdimm_bus->nd_desc);

 return 0;
}
