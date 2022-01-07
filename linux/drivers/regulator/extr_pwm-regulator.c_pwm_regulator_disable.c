
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pwm_regulator_data {int enb_gpio; int pwm; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int pwm_disable (int ) ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pwm_regulator_disable(struct regulator_dev *dev)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(dev);

 pwm_disable(drvdata->pwm);

 gpiod_set_value_cansleep(drvdata->enb_gpio, 0);

 return 0;
}
