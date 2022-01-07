
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int SKY81452_REG4 ;
 unsigned int SKY81452_REG5 ;
 unsigned int SKY81452_SHRT ;
 struct regmap* bl_get_data (int ) ;
 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int to_backlight_device (struct device*) ;

__attribute__((used)) static ssize_t sky81452_bl_show_open_short(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct regmap *regmap = bl_get_data(to_backlight_device(dev));
 unsigned int reg, value = 0;
 char tmp[3];
 int i, ret;

 reg = !strcmp(attr->attr.name, "open") ? SKY81452_REG5 : SKY81452_REG4;
 ret = regmap_read(regmap, reg, &value);
 if (ret < 0)
  return ret;

 if (value & SKY81452_SHRT) {
  *buf = 0;
  for (i = 0; i < 6; i++) {
   if (value & 0x01) {
    sprintf(tmp, "%d ", i + 1);
    strcat(buf, tmp);
   }
   value >>= 1;
  }
  strcat(buf, "\n");
 } else {
  strcpy(buf, "none\n");
 }

 return strlen(buf);
}
