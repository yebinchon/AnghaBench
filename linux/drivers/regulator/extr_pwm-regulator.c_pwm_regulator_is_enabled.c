
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pwm_regulator_data {int pwm; scalar_t__ enb_gpio; } ;


 int gpiod_get_value_cansleep (scalar_t__) ;
 int pwm_is_enabled (int ) ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pwm_regulator_is_enabled(struct regulator_dev *dev)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(dev);

 if (drvdata->enb_gpio && !gpiod_get_value_cansleep(drvdata->enb_gpio))
  return 0;

 return pwm_is_enabled(drvdata->pwm);
}
