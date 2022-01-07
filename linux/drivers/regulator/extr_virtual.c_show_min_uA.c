
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_consumer_data {int min_uA; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct virtual_consumer_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_min_uA(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct virtual_consumer_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", data->min_uA);
}
