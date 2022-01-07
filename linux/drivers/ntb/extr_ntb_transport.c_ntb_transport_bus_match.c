
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int name; } ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int ntb_transport_bus_match(struct device *dev,
       struct device_driver *drv)
{
 return !strncmp(dev_name(dev), drv->name, strlen(drv->name));
}
