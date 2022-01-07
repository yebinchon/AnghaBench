
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int dev; int regmap; } ;





 unsigned int MAX8973_CKKADV_TRIP_MASK ;
 int MAX8973_CONTROL2 ;
 int dev_err (int ,char*,int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max8973_get_current_limit(struct regulator_dev *rdev)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 unsigned int control2;
 int ret;

 ret = regmap_read(max->regmap, MAX8973_CONTROL2, &control2);
 if (ret < 0) {
  dev_err(max->dev, "register %d read failed: %d\n",
    MAX8973_CONTROL2, ret);
  return ret;
 }
 switch (control2 & MAX8973_CKKADV_TRIP_MASK) {
 case 128:
  return 15000000;
 case 130:
  return 12000000;
 case 129:
  return 9000000;
 default:
  break;
 }
 return 9000000;
}
