
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_INVALID ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;




__attribute__((used)) static unsigned int rpmh_regulator_pmic4_ldo_of_map_mode(unsigned int rpmh_mode)
{
 unsigned int mode;

 switch (rpmh_mode) {
 case 130:
  mode = REGULATOR_MODE_NORMAL;
  break;
 case 129:
  mode = REGULATOR_MODE_IDLE;
  break;
 case 128:
  mode = REGULATOR_MODE_STANDBY;
  break;
 default:
  mode = REGULATOR_MODE_INVALID;
  break;
 }

 return mode;
}
