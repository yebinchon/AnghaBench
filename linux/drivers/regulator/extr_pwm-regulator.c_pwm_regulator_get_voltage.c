
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct regulator_dev {TYPE_2__* constraints; } ;
struct pwm_state {int dummy; } ;
struct TYPE_3__ {unsigned int min_uV_dutycycle; unsigned int max_uV_dutycycle; unsigned int dutycycle_unit; } ;
struct pwm_regulator_data {int pwm; TYPE_1__ continuous; } ;
struct TYPE_4__ {int min_uV; int max_uV; } ;


 unsigned int DIV_ROUND_CLOSEST_ULL (int,unsigned int) ;
 unsigned int pwm_get_relative_duty_cycle (struct pwm_state*,unsigned int) ;
 int pwm_get_state (int ,struct pwm_state*) ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pwm_regulator_get_voltage(struct regulator_dev *rdev)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(rdev);
 unsigned int min_uV_duty = drvdata->continuous.min_uV_dutycycle;
 unsigned int max_uV_duty = drvdata->continuous.max_uV_dutycycle;
 unsigned int duty_unit = drvdata->continuous.dutycycle_unit;
 int min_uV = rdev->constraints->min_uV;
 int max_uV = rdev->constraints->max_uV;
 int diff_uV = max_uV - min_uV;
 struct pwm_state pstate;
 unsigned int diff_duty;
 unsigned int voltage;

 pwm_get_state(drvdata->pwm, &pstate);

 voltage = pwm_get_relative_duty_cycle(&pstate, duty_unit);






 if (max_uV_duty < min_uV_duty) {
  voltage = min_uV_duty - voltage;
  diff_duty = min_uV_duty - max_uV_duty;
 } else {
  voltage = voltage - min_uV_duty;
  diff_duty = max_uV_duty - min_uV_duty;
 }

 voltage = DIV_ROUND_CLOSEST_ULL((u64)voltage * diff_uV, diff_duty);

 return voltage + min_uV;
}
