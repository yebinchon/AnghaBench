
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dev; } ;
struct pwm_state {int dummy; } ;
struct pwm_regulator_data {unsigned int state; int pwm; TYPE_1__* duty_cycle_table; } ;
struct TYPE_2__ {int dutycycle; } ;


 int dev_err (int *,char*,int) ;
 int pwm_apply_state (int ,struct pwm_state*) ;
 int pwm_init_state (int ,struct pwm_state*) ;
 int pwm_set_relative_duty_cycle (struct pwm_state*,int ,int) ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pwm_regulator_set_voltage_sel(struct regulator_dev *rdev,
      unsigned selector)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(rdev);
 struct pwm_state pstate;
 int ret;

 pwm_init_state(drvdata->pwm, &pstate);
 pwm_set_relative_duty_cycle(&pstate,
   drvdata->duty_cycle_table[selector].dutycycle, 100);

 ret = pwm_apply_state(drvdata->pwm, &pstate);
 if (ret) {
  dev_err(&rdev->dev, "Failed to configure PWM: %d\n", ret);
  return ret;
 }

 drvdata->state = selector;

 return 0;
}
