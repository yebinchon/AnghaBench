
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;

__attribute__((used)) static unsigned int wm831x_gp_ldo_get_optimum_mode(struct regulator_dev *rdev,
         int input_uV,
         int output_uV, int load_uA)
{
 if (load_uA < 20000)
  return REGULATOR_MODE_STANDBY;
 if (load_uA < 50000)
  return REGULATOR_MODE_IDLE;
 return REGULATOR_MODE_NORMAL;
}
