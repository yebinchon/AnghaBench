
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xl_cclk_b (int) ;

void xl_shift_cclk(int count)
{
 int i;

 for (i = 0; i < count; i++) {
  xl_cclk_b(1);
  xl_cclk_b(0);
 }
}
