
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_driver {int dummy; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct gbphy_device_id* gbphy_dev_match_id (struct gbphy_device*,struct gbphy_driver*) ;
 struct gbphy_device* to_gbphy_dev (struct device*) ;
 struct gbphy_driver* to_gbphy_driver (struct device_driver*) ;

__attribute__((used)) static int gbphy_dev_match(struct device *dev, struct device_driver *drv)
{
 struct gbphy_driver *gbphy_drv = to_gbphy_driver(drv);
 struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
 const struct gbphy_device_id *id;

 id = gbphy_dev_match_id(gbphy_dev, gbphy_drv);
 if (id)
  return 1;

 return 0;
}
