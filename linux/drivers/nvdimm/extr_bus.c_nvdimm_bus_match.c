
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_device_driver {int type; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ is_nvdimm_bus (struct device*) ;
 struct nd_device_driver nd_bus_driver ;
 int test_bit (int ,int *) ;
 struct nd_device_driver* to_nd_device_driver (struct device_driver*) ;
 int to_nd_device_type (struct device*) ;

__attribute__((used)) static int nvdimm_bus_match(struct device *dev, struct device_driver *drv)
{
 struct nd_device_driver *nd_drv = to_nd_device_driver(drv);

 if (is_nvdimm_bus(dev) && nd_drv == &nd_bus_driver)
  return 1;

 return !!test_bit(to_nd_device_type(dev), &nd_drv->type);
}
