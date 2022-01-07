
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REGULATOR_MODE_INVALID ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;



__attribute__((used)) static inline unsigned int twl4030reg_map_mode(unsigned int mode)
{
 switch (mode) {
 case 129:
  return REGULATOR_MODE_NORMAL;
 case 128:
  return REGULATOR_MODE_STANDBY;
 default:
  return REGULATOR_MODE_INVALID;
 }
}
