
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps51632_chip {int dev; int regmap; } ;
struct regulator_dev {int dummy; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (int,int) ;
 int TPS51632_SLEW_REGS ;
 int dev_err (int ,char*,int) ;
 struct tps51632_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int tps51632_dcdc_set_ramp_delay(struct regulator_dev *rdev,
  int ramp_delay)
{
 struct tps51632_chip *tps = rdev_get_drvdata(rdev);
 int bit;
 int ret;

 if (ramp_delay == 0)
  bit = 0;
 else
  bit = DIV_ROUND_UP(ramp_delay, 6000) - 1;

 ret = regmap_write(tps->regmap, TPS51632_SLEW_REGS, BIT(bit));
 if (ret < 0)
  dev_err(tps->dev, "SLEW reg write failed, err %d\n", ret);
 return ret;
}
