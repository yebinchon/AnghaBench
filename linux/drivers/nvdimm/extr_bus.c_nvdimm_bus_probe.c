
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvdimm_bus {int dev; } ;
struct nd_device_driver {int (* probe ) (struct device*) ;} ;
struct module {int dummy; } ;
struct device {TYPE_1__* driver; scalar_t__ parent; } ;
struct TYPE_2__ {int name; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 int debug_nvdimm_lock (struct device*) ;
 int debug_nvdimm_unlock (struct device*) ;
 int dev_dbg (int *,char*,int ,int ,...) ;
 int dev_name (struct device*) ;
 scalar_t__ is_nd_region (scalar_t__) ;
 int module_put (struct module*) ;
 int nd_region_advance_seeds (int ,struct device*) ;
 int nvdimm_bus_probe_end (struct nvdimm_bus*) ;
 int nvdimm_bus_probe_start (struct nvdimm_bus*) ;
 int stub1 (struct device*) ;
 struct module* to_bus_provider (struct device*) ;
 struct nd_device_driver* to_nd_device_driver (TYPE_1__*) ;
 int to_nd_region (scalar_t__) ;
 int try_module_get (struct module*) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

__attribute__((used)) static int nvdimm_bus_probe(struct device *dev)
{
 struct nd_device_driver *nd_drv = to_nd_device_driver(dev->driver);
 struct module *provider = to_bus_provider(dev);
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);
 int rc;

 if (!try_module_get(provider))
  return -ENXIO;

 dev_dbg(&nvdimm_bus->dev, "START: %s.probe(%s)\n",
   dev->driver->name, dev_name(dev));

 nvdimm_bus_probe_start(nvdimm_bus);
 debug_nvdimm_lock(dev);
 rc = nd_drv->probe(dev);
 debug_nvdimm_unlock(dev);

 if ((rc == 0 || rc == -EOPNOTSUPP) &&
   dev->parent && is_nd_region(dev->parent))
  nd_region_advance_seeds(to_nd_region(dev->parent), dev);
 nvdimm_bus_probe_end(nvdimm_bus);

 dev_dbg(&nvdimm_bus->dev, "END: %s.probe(%s) = %d\n", dev->driver->name,
   dev_name(dev), rc);

 if (rc != 0)
  module_put(provider);
 return rc;
}
