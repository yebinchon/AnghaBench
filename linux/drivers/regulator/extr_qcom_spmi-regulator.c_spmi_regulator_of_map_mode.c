
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;

__attribute__((used)) static unsigned int spmi_regulator_of_map_mode(unsigned int mode)
{
 if (mode == 1)
  return REGULATOR_MODE_NORMAL;
 if (mode == 2)
  return REGULATOR_MODE_FAST;

 return REGULATOR_MODE_IDLE;
}
