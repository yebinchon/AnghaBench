
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1343_priv {int map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;






 int DS1343_TRICKLE_MAGIC ;
 int DS1343_TRICKLE_REG ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static ssize_t ds1343_show_tricklecharger(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int data;
 char *diodes = "disabled", *resistors = " ";

 regmap_read(priv->map, DS1343_TRICKLE_REG, &data);

 if ((data & 0xf0) == DS1343_TRICKLE_MAGIC) {
  switch (data & 0x0c) {
  case 128:
   diodes = "one diode,";
   break;

  default:
   diodes = "no diode,";
   break;
  }

  switch (data & 0x03) {
  case 131:
   resistors = "1k Ohm";
   break;

  case 130:
   resistors = "2k Ohm";
   break;

  case 129:
   resistors = "4k Ohm";
   break;

  default:
   diodes = "disabled";
   break;
  }
 }

 return sprintf(buf, "%s %s\n", diodes, resistors);
}
