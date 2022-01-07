
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int bb; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int ssize_t ;


 int ENXIO ;
 int badblocks_show (int *,char*,int ) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t region_badblocks_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev);
 ssize_t rc;

 nd_device_lock(dev);
 if (dev->driver)
  rc = badblocks_show(&nd_region->bb, buf, 0);
 else
  rc = -ENXIO;
 nd_device_unlock(dev);

 return rc;
}
