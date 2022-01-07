
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int (* fieldbus_id_get ) (struct fieldbus_dev*,char*,int ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fieldbus_dev* dev_get_drvdata (struct device*) ;
 int stub1 (struct fieldbus_dev*,char*,int ) ;

__attribute__((used)) static ssize_t fieldbus_id_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct fieldbus_dev *fb = dev_get_drvdata(dev);

 return fb->fieldbus_id_get(fb, buf, PAGE_SIZE);
}
