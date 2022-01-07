
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1343_priv {int map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int DS1343_CONTROL_REG ;
 int DS1343_EGFIL ;
 size_t EINVAL ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t ds1343_store_glitchfilter(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int data;

 regmap_read(priv->map, DS1343_CONTROL_REG, &data);

 if (strncmp(buf, "enabled", 7) == 0)
  data |= DS1343_EGFIL;

 else if (strncmp(buf, "disabled", 8) == 0)
  data &= ~(DS1343_EGFIL);

 else
  return -EINVAL;

 regmap_write(priv->map, DS1343_CONTROL_REG, data);

 return count;
}
