
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pwm_regulator_data {int pwm; int enb_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int pwm_enable (int ) ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pwm_regulator_enable(struct regulator_dev *dev)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(dev);

 gpiod_set_value_cansleep(drvdata->enb_gpio, 1);

 return pwm_enable(drvdata->pwm);
}
