
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {char* card_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fieldbus_dev* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t card_name_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct fieldbus_dev *fb = dev_get_drvdata(dev);





 return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
}
