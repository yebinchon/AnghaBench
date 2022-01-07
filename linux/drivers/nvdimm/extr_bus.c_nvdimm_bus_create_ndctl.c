
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int id; int dev; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_dbg (int *,char*,int ,int ) ;
 struct device* device_create (int ,int *,int ,struct nvdimm_bus*,char*,int ) ;
 int nd_class ;
 int nvdimm_bus_major ;

int nvdimm_bus_create_ndctl(struct nvdimm_bus *nvdimm_bus)
{
 dev_t devt = MKDEV(nvdimm_bus_major, nvdimm_bus->id);
 struct device *dev;

 dev = device_create(nd_class, &nvdimm_bus->dev, devt, nvdimm_bus,
   "ndctl%d", nvdimm_bus->id);

 if (IS_ERR(dev))
  dev_dbg(&nvdimm_bus->dev, "failed to register ndctl%d: %ld\n",
    nvdimm_bus->id, PTR_ERR(dev));
 return PTR_ERR_OR_ZERO(dev);
}
