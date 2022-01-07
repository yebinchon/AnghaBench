
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CURRENT_GATE ;
 int CURRENT_GATE_I2C ;
 int peek32 (int ) ;
 int sm750_set_current_gate (int ) ;

void sm750_enable_i2c(unsigned int enable)
{
 u32 gate;


 gate = peek32(CURRENT_GATE);
 if (enable)
  gate |= CURRENT_GATE_I2C;
 else
  gate &= ~CURRENT_GATE_I2C;

 sm750_set_current_gate(gate);
}
