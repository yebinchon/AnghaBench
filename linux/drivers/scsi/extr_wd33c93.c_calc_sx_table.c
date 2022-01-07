
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_period {int period_ns; int reg_value; } ;


 int round_4 (unsigned int) ;

__attribute__((used)) static void
calc_sx_table(unsigned int mhz, struct sx_period sx_table[9])
{
 unsigned int d, i;
 if (mhz < 11)
  d = 2;
 else if (mhz < 16)
  d = 3;
 else
  d = 4;

 d = (100000 * d) / 2 / mhz;

 sx_table[0].period_ns = 1;
 sx_table[0].reg_value = 0x20;
 for (i = 1; i < 8; i++) {
  sx_table[i].period_ns = round_4((i+1)*d / 100);
  sx_table[i].reg_value = (i+1)*0x10;
 }
 sx_table[7].reg_value = 0;
 sx_table[8].period_ns = 0;
 sx_table[8].reg_value = 0;
}
