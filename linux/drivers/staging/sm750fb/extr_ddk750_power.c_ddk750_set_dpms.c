
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpms { ____Placeholder_dpms } dpms ;


 int CRT_DISPLAY_CTRL ;
 unsigned int CRT_DISPLAY_CTRL_DPMS_MASK ;
 int CRT_DISPLAY_CTRL_DPMS_SHIFT ;
 scalar_t__ SM750LE ;
 int SYSTEM_CTRL ;
 unsigned int SYSTEM_CTRL_DPMS_MASK ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 scalar_t__ sm750_get_chip_type () ;

void ddk750_set_dpms(enum dpms state)
{
 unsigned int value;

 if (sm750_get_chip_type() == SM750LE) {
  value = peek32(CRT_DISPLAY_CTRL) & ~CRT_DISPLAY_CTRL_DPMS_MASK;
  value |= (state << CRT_DISPLAY_CTRL_DPMS_SHIFT);
  poke32(CRT_DISPLAY_CTRL, value);
 } else {
  value = peek32(SYSTEM_CTRL);
  value = (value & ~SYSTEM_CTRL_DPMS_MASK) | state;
  poke32(SYSTEM_CTRL, value);
 }
}
