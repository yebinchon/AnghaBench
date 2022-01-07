
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int fieldbus_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;



 struct fieldbus_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t fieldbus_type_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct fieldbus_dev *fb = dev_get_drvdata(dev);
 const char *t;

 switch (fb->fieldbus_type) {
 case 128:
  t = "profinet";
  break;
 default:
  t = "unknown";
  break;
 }

 return sprintf(buf, "%s\n", t);
}
