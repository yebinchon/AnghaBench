
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;


 int cmf_enabled (struct ccw_device*) ;
 int sprintf (char*,char*,int) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t cmb_enable_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct ccw_device *cdev = to_ccwdev(dev);

 return sprintf(buf, "%d\n", cmf_enabled(cdev));
}
