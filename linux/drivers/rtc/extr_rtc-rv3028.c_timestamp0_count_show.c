
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv3028_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int RV3028_TS_COUNT ;
 struct rv3028_data* dev_get_drvdata (int ) ;
 int regmap_read (int ,int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t timestamp0_count_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev->parent);
 int ret, count;

 ret = regmap_read(rv3028->regmap, RV3028_TS_COUNT, &count);
 if (ret)
  return ret;

 return sprintf(buf, "%u\n", count);
}
