
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MT6358_BUCK_MODE_AUTO ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;

__attribute__((used)) static unsigned int mt6358_map_mode(unsigned int mode)
{
 return mode == MT6358_BUCK_MODE_AUTO ?
  REGULATOR_MODE_NORMAL : REGULATOR_MODE_FAST;
}
