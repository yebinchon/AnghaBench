
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2mpa01_info {unsigned int ramp_delay24; unsigned int ramp_delay3; unsigned int ramp_delay5; unsigned int ramp_delay16; unsigned int ramp_delay7; unsigned int ramp_delay8910; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int ramp_delay; unsigned int min_uV; unsigned int uV_step; } ;


 int DIV_ROUND_UP (int ,unsigned int) ;
 int abs (int) ;
 struct s2mpa01_info* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int s2mpa01_regulator_set_voltage_time_sel(struct regulator_dev *rdev,
       unsigned int old_selector,
       unsigned int new_selector)
{
 struct s2mpa01_info *s2mpa01 = rdev_get_drvdata(rdev);
 unsigned int ramp_delay = 0;
 int old_volt, new_volt;

 switch (rdev_get_id(rdev)) {
 case 135:
 case 133:
  ramp_delay = s2mpa01->ramp_delay24;
  break;
 case 134:
  ramp_delay = s2mpa01->ramp_delay3;
  break;
 case 132:
  ramp_delay = s2mpa01->ramp_delay5;
  break;
 case 137:
 case 131:
  ramp_delay = s2mpa01->ramp_delay16;
  break;
 case 130:
  ramp_delay = s2mpa01->ramp_delay7;
  break;
 case 129:
 case 128:
 case 136:
  ramp_delay = s2mpa01->ramp_delay8910;
  break;
 }

 if (ramp_delay == 0)
  ramp_delay = rdev->desc->ramp_delay;

 old_volt = rdev->desc->min_uV + (rdev->desc->uV_step * old_selector);
 new_volt = rdev->desc->min_uV + (rdev->desc->uV_step * new_selector);

 return DIV_ROUND_UP(abs(new_volt - old_volt), ramp_delay);
}
