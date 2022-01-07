
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int dev; int regmap; } ;


 unsigned int MAX8973_CKKADV_TRIP_150mV_PER_US ;
 unsigned int MAX8973_CKKADV_TRIP_75mV_PER_US ;
 unsigned int MAX8973_CKKADV_TRIP_DISABLE ;
 int MAX8973_CKKADV_TRIP_MASK ;
 int MAX8973_CONTROL2 ;
 int dev_err (int ,char*,int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max8973_set_current_limit(struct regulator_dev *rdev,
  int min_ua, int max_ua)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 unsigned int val;
 int ret;

 if (max_ua <= 9000000)
  val = MAX8973_CKKADV_TRIP_75mV_PER_US;
 else if (max_ua <= 12000000)
  val = MAX8973_CKKADV_TRIP_150mV_PER_US;
 else
  val = MAX8973_CKKADV_TRIP_DISABLE;

 ret = regmap_update_bits(max->regmap, MAX8973_CONTROL2,
   MAX8973_CKKADV_TRIP_MASK, val);
 if (ret < 0) {
  dev_err(max->dev, "register %d update failed: %d\n",
    MAX8973_CONTROL2, ret);
  return ret;
 }
 return 0;
}
