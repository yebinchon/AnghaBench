
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;


 int device_unregister (struct device*) ;
 int pcie_port_bus_type ;

__attribute__((used)) static int remove_iter(struct device *dev, void *data)
{
 if (dev->bus == &pcie_port_bus_type)
  device_unregister(dev);
 return 0;
}
