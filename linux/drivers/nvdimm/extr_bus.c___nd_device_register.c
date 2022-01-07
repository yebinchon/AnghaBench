
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device* parent; int * bus; } ;
struct TYPE_2__ {scalar_t__ numa_node; } ;


 scalar_t__ NUMA_NO_NODE ;
 int async_schedule_dev_domain (int ,struct device*,int *) ;
 scalar_t__ dev_to_node (struct device*) ;
 int get_device (struct device*) ;
 scalar_t__ is_nd_region (struct device*) ;
 int nd_async_device_register ;
 int nd_async_domain ;
 int nvdimm_bus_type ;
 int set_dev_node (struct device*,scalar_t__) ;
 TYPE_1__* to_nd_region (struct device*) ;

void __nd_device_register(struct device *dev)
{
 if (!dev)
  return;







 if (is_nd_region(dev))
  set_dev_node(dev, to_nd_region(dev)->numa_node);

 dev->bus = &nvdimm_bus_type;
 if (dev->parent) {
  get_device(dev->parent);
  if (dev_to_node(dev) == NUMA_NO_NODE)
   set_dev_node(dev, dev_to_node(dev->parent));
 }
 get_device(dev);

 async_schedule_dev_domain(nd_async_device_register, dev,
      &nd_async_domain);
}
