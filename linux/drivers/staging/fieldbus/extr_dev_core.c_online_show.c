
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int online; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fieldbus_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t online_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct fieldbus_dev *fb = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", !!fb->online);
}
