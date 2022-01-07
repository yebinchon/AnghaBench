
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX77802_OPMODE_NORMAL ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;

__attribute__((used)) static inline unsigned int max77802_map_mode(unsigned int mode)
{
 return mode == MAX77802_OPMODE_NORMAL ?
  REGULATOR_MODE_NORMAL : REGULATOR_MODE_STANDBY;
}
