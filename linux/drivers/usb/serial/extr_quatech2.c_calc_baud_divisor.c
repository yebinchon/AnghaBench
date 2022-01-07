
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_BAUD_RATE ;

__attribute__((used)) static inline int calc_baud_divisor(int baudrate)
{
 int divisor, rem;

 divisor = MAX_BAUD_RATE / baudrate;
 rem = MAX_BAUD_RATE % baudrate;

 if (((rem * 2) >= baudrate) && (baudrate != 110))
  divisor++;

 return divisor;
}
