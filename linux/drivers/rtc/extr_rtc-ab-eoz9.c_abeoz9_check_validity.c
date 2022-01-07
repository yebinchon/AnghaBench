
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct abeoz9_rtc_data {struct regmap* regmap; } ;


 int ABEOZ9_REG_CTRL_STATUS ;
 int ABEOZ9_REG_CTRL_STATUS_PON ;
 int ABEOZ9_REG_CTRL_STATUS_V1F ;
 int ABEOZ9_REG_CTRL_STATUS_V2F ;
 int EINVAL ;
 int dev_err (struct device*,char*,int) ;
 struct abeoz9_rtc_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static int abeoz9_check_validity(struct device *dev)
{
 struct abeoz9_rtc_data *data = dev_get_drvdata(dev);
 struct regmap *regmap = data->regmap;
 int ret;
 int val;

 ret = regmap_read(regmap, ABEOZ9_REG_CTRL_STATUS, &val);
 if (ret < 0) {
  dev_err(dev,
   "unable to get CTRL_STATUS register (%d)\n", ret);
  return ret;
 }

 if (val & ABEOZ9_REG_CTRL_STATUS_PON) {
  dev_warn(dev, "power-on reset detected, date is invalid\n");
  return -EINVAL;
 }

 if (val & ABEOZ9_REG_CTRL_STATUS_V1F) {
  dev_warn(dev,
    "voltage drops below VLOW1 threshold, date is invalid\n");
  return -EINVAL;
 }

 if ((val & ABEOZ9_REG_CTRL_STATUS_V2F)) {
  dev_warn(dev,
    "voltage drops below VLOW2 threshold, date is invalid\n");
  return -EINVAL;
 }

 return 0;
}
