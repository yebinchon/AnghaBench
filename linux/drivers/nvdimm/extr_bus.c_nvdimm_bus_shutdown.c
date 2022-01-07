
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvdimm_bus {int dev; } ;
struct nd_device_driver {int (* shutdown ) (struct device*) ;} ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 int dev_dbg (int *,char*,int ,int ) ;
 int dev_name (struct device*) ;
 int stub1 (struct device*) ;
 struct nd_device_driver* to_nd_device_driver (TYPE_1__*) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

__attribute__((used)) static void nvdimm_bus_shutdown(struct device *dev)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);
 struct nd_device_driver *nd_drv = ((void*)0);

 if (dev->driver)
  nd_drv = to_nd_device_driver(dev->driver);

 if (nd_drv && nd_drv->shutdown) {
  nd_drv->shutdown(dev);
  dev_dbg(&nvdimm_bus->dev, "%s.shutdown(%s)\n",
    dev->driver->name, dev_name(dev));
 }
}
