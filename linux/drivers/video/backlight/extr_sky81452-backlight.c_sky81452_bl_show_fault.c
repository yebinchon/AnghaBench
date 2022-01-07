
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int SKY81452_OCP ;
 unsigned int SKY81452_OTMP ;
 int SKY81452_REG4 ;
 struct regmap* bl_get_data (int ) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t sky81452_bl_show_fault(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct regmap *regmap = bl_get_data(to_backlight_device(dev));
 unsigned int value = 0;
 int ret;

 ret = regmap_read(regmap, SKY81452_REG4, &value);
 if (ret < 0)
  return ret;

 *buf = 0;

 if (value & SKY81452_OCP)
  strcat(buf, "over-current ");

 if (value & SKY81452_OTMP)
  strcat(buf, "over-temperature");

 strcat(buf, "\n");
 return strlen(buf);
}
