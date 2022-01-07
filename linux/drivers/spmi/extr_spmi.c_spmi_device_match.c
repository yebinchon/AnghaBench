
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {scalar_t__ name; } ;
struct device {int dummy; } ;


 int SPMI_NAME_SIZE ;
 int dev_name (struct device*) ;
 scalar_t__ of_driver_match_device (struct device*,struct device_driver*) ;
 scalar_t__ strncmp (int ,scalar_t__,int ) ;

__attribute__((used)) static int spmi_device_match(struct device *dev, struct device_driver *drv)
{
 if (of_driver_match_device(dev, drv))
  return 1;

 if (drv->name)
  return strncmp(dev_name(dev), drv->name,
          SPMI_NAME_SIZE) == 0;

 return 0;
}
