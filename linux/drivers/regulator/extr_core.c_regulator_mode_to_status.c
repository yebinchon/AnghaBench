
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REGULATOR_STATUS_FAST ;
 int REGULATOR_STATUS_IDLE ;
 int REGULATOR_STATUS_NORMAL ;
 int REGULATOR_STATUS_STANDBY ;
 int REGULATOR_STATUS_UNDEFINED ;

int regulator_mode_to_status(unsigned int mode)
{
 switch (mode) {
 case 131:
  return REGULATOR_STATUS_FAST;
 case 129:
  return REGULATOR_STATUS_NORMAL;
 case 130:
  return REGULATOR_STATUS_IDLE;
 case 128:
  return REGULATOR_STATUS_STANDBY;
 default:
  return REGULATOR_STATUS_UNDEFINED;
 }
}
