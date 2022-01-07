
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long CTZ (int ) ;
 int SKY81452_EN ;
 int SKY81452_REG1 ;
 struct regmap* bl_get_data (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int regmap_update_bits (struct regmap*,int ,int ,unsigned long) ;
 int to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t sky81452_bl_store_enable(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct regmap *regmap = bl_get_data(to_backlight_device(dev));
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 16, &value);
 if (ret < 0)
  return ret;

 ret = regmap_update_bits(regmap, SKY81452_REG1, SKY81452_EN,
     value << CTZ(SKY81452_EN));
 if (ret < 0)
  return ret;

 return count;
}
