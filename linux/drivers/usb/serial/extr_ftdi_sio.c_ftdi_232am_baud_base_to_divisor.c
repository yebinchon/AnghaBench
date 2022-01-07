
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static unsigned short int ftdi_232am_baud_base_to_divisor(int baud, int base)
{
 unsigned short int divisor;

 int divisor3 = DIV_ROUND_CLOSEST(base, 2 * baud);
 if ((divisor3 & 0x7) == 7)
  divisor3++;
 divisor = divisor3 >> 3;
 divisor3 &= 0x7;
 if (divisor3 == 1)
  divisor |= 0xc000;
 else if (divisor3 >= 4)
  divisor |= 0x4000;
 else if (divisor3 != 0)
  divisor |= 0x8000;
 else if (divisor == 1)
  divisor = 0;
 return divisor;
}
