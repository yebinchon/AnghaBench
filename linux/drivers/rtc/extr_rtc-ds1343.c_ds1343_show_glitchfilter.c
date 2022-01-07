
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1343_priv {int map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DS1343_CONTROL_REG ;
 int DS1343_EGFIL ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t ds1343_show_glitchfilter(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int glitch_filt_status, data;

 regmap_read(priv->map, DS1343_CONTROL_REG, &data);

 glitch_filt_status = !!(data & DS1343_EGFIL);

 if (glitch_filt_status)
  return sprintf(buf, "enabled\n");
 else
  return sprintf(buf, "disabled\n");
}
