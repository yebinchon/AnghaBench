
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct abeoz9_rtc_data {struct regmap* regmap; } ;


 int ABEOZ9_REG_CTRL1 ;
 int ABEOZ9_REG_CTRL1_EERE ;
 int ABEOZ9_REG_CTRL1_MASK ;
 int ABEOZ9_REG_CTRL1_SRON ;
 int ABEOZ9_REG_CTRL1_WE ;
 int ABEOZ9_REG_CTRL_INT ;
 int ABEOZ9_REG_CTRL_INT_FLAG ;
 int ABEOZ9_REG_EEPROM ;
 int ABEOZ9_REG_EEPROM_MASK ;
 int ABEOZ9_REG_EEPROM_THE ;
 int abeoz9_trickle_parse_dt (struct device_node*) ;
 int dev_err (struct device*,char*,int) ;
 struct abeoz9_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int abeoz9_rtc_setup(struct device *dev, struct device_node *node)
{
 struct abeoz9_rtc_data *data = dev_get_drvdata(dev);
 struct regmap *regmap = data->regmap;
 int ret;


 ret = regmap_update_bits(regmap, ABEOZ9_REG_CTRL1,
     ABEOZ9_REG_CTRL1_MASK,
     ABEOZ9_REG_CTRL1_WE |
     ABEOZ9_REG_CTRL1_EERE |
     ABEOZ9_REG_CTRL1_SRON);
 if (ret < 0) {
  dev_err(dev, "unable to set CTRL_1 register (%d)\n", ret);
  return ret;
 }

 ret = regmap_write(regmap, ABEOZ9_REG_CTRL_INT, 0);
 if (ret < 0) {
  dev_err(dev,
   "unable to set control CTRL_INT register (%d)\n",
   ret);
  return ret;
 }

 ret = regmap_write(regmap, ABEOZ9_REG_CTRL_INT_FLAG, 0);
 if (ret < 0) {
  dev_err(dev,
   "unable to set control CTRL_INT_FLAG register (%d)\n",
   ret);
  return ret;
 }

 ret = abeoz9_trickle_parse_dt(node);


 ret |= ABEOZ9_REG_EEPROM_THE;

 ret = regmap_update_bits(regmap, ABEOZ9_REG_EEPROM,
     ABEOZ9_REG_EEPROM_MASK,
     ret);
 if (ret < 0) {
  dev_err(dev, "unable to set EEPROM register (%d)\n", ret);
  return ret;
 }

 return ret;
}
