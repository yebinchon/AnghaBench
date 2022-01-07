
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int * type; } ;


 int siox_device_type ;

__attribute__((used)) static int siox_match(struct device *dev, struct device_driver *drv)
{
 if (dev->type != &siox_device_type)
  return 0;


 return 1;
}
