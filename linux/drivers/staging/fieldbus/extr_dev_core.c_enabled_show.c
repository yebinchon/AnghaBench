
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int (* enable_get ) (struct fieldbus_dev*) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct fieldbus_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct fieldbus_dev*) ;
 int stub2 (struct fieldbus_dev*) ;

__attribute__((used)) static ssize_t enabled_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct fieldbus_dev *fb = dev_get_drvdata(dev);

 if (!fb->enable_get)
  return -EINVAL;
 return sprintf(buf, "%d\n", !!fb->enable_get(fb));
}
