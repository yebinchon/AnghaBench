
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_INVALID ;
 unsigned int REGULATOR_MODE_NORMAL ;

__attribute__((used)) static unsigned int mcp16502_of_map_mode(unsigned int mode)
{
 if (mode == REGULATOR_MODE_NORMAL || mode == REGULATOR_MODE_IDLE)
  return mode;

 return REGULATOR_MODE_INVALID;
}
