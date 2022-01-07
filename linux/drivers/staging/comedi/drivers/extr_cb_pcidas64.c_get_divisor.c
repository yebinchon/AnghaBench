
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int TIMER_BASE ;

__attribute__((used)) static unsigned int get_divisor(unsigned int ns, unsigned int flags)
{
 unsigned int divisor;

 switch (flags & CMDF_ROUND_MASK) {
 case 128:
  divisor = DIV_ROUND_UP(ns, TIMER_BASE);
  break;
 case 130:
  divisor = ns / TIMER_BASE;
  break;
 case 129:
 default:
  divisor = DIV_ROUND_CLOSEST(ns, TIMER_BASE);
  break;
 }
 return divisor;
}
