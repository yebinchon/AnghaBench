
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_btt {int size; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int ssize_t ;


 int ENXIO ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int sprintf (char*,char*,int ) ;
 struct nd_btt* to_nd_btt (struct device*) ;

__attribute__((used)) static ssize_t size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_btt *nd_btt = to_nd_btt(dev);
 ssize_t rc;

 nd_device_lock(dev);
 if (dev->driver)
  rc = sprintf(buf, "%llu\n", nd_btt->size);
 else {

  rc = -ENXIO;
 }
 nd_device_unlock(dev);

 return rc;
}
