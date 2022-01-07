
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_MODE_CTRL ;
 unsigned int POWER_MODE_CTRL_MODE_MASK ;
 scalar_t__ SM750LE ;
 unsigned int peek32 (int ) ;
 scalar_t__ sm750_get_chip_type () ;

__attribute__((used)) static unsigned int get_power_mode(void)
{
 if (sm750_get_chip_type() == SM750LE)
  return 0;
 return peek32(POWER_MODE_CTRL) & POWER_MODE_CTRL_MODE_MASK;
}
