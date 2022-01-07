
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct pwm_state {int dummy; } ;
struct pwm_regulator_data {int state; TYPE_2__* duty_cycle_table; int pwm; } ;
struct TYPE_4__ {unsigned int dutycycle; } ;
struct TYPE_3__ {int n_voltages; } ;


 unsigned int pwm_get_relative_duty_cycle (struct pwm_state*,int) ;
 int pwm_get_state (int ,struct pwm_state*) ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static void pwm_regulator_init_state(struct regulator_dev *rdev)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(rdev);
 struct pwm_state pwm_state;
 unsigned int dutycycle;
 int i;

 pwm_get_state(drvdata->pwm, &pwm_state);
 dutycycle = pwm_get_relative_duty_cycle(&pwm_state, 100);

 for (i = 0; i < rdev->desc->n_voltages; i++) {
  if (dutycycle == drvdata->duty_cycle_table[i].dutycycle) {
   drvdata->state = i;
   return;
  }
 }
}
