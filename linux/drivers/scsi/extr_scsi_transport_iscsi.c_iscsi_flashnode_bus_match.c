
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int * bus; } ;


 int iscsi_flashnode_bus ;

int iscsi_flashnode_bus_match(struct device *dev,
         struct device_driver *drv)
{
 if (dev->bus == &iscsi_flashnode_bus)
  return 1;
 return 0;
}
