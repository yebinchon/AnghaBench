
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int most_match(struct device *dev, struct device_driver *drv)
{
 if (!strcmp(dev_name(dev), "most"))
  return 0;
 else
  return 1;
}
