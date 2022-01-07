
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct pwm_regulator_data {TYPE_2__* duty_cycle_table; } ;
struct TYPE_4__ {int uV; } ;
struct TYPE_3__ {unsigned int n_voltages; } ;


 int EINVAL ;
 struct pwm_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int pwm_regulator_list_voltage(struct regulator_dev *rdev,
          unsigned selector)
{
 struct pwm_regulator_data *drvdata = rdev_get_drvdata(rdev);

 if (selector >= rdev->desc->n_voltages)
  return -EINVAL;

 return drvdata->duty_cycle_table[selector].uV;
}
