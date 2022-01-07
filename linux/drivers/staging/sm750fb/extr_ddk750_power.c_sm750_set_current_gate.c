
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE0_GATE ;
 int MODE1_GATE ;
 scalar_t__ POWER_MODE_CTRL_MODE_MODE1 ;
 scalar_t__ get_power_mode () ;
 int poke32 (int ,unsigned int) ;

void sm750_set_current_gate(unsigned int gate)
{
 if (get_power_mode() == POWER_MODE_CTRL_MODE_MODE1)
  poke32(MODE1_GATE, gate);
 else
  poke32(MODE0_GATE, gate);
}
