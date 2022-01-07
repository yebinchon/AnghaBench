
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;

__attribute__((used)) static int dt3k_ns_to_timer(unsigned int timer_base, unsigned int *nanosec,
       unsigned int flags)
{
 unsigned int divider, base, prescale;




 for (prescale = 0; prescale < 16; prescale++) {
  base = timer_base * (prescale + 1);
  switch (flags & CMDF_ROUND_MASK) {
  case 129:
  default:
   divider = DIV_ROUND_CLOSEST(*nanosec, base);
   break;
  case 130:
   divider = (*nanosec) / base;
   break;
  case 128:
   divider = DIV_ROUND_UP(*nanosec, base);
   break;
  }
  if (divider < 65536) {
   *nanosec = divider * base;
   return (prescale << 16) | (divider);
  }
 }

 prescale = 15;
 base = timer_base * (prescale + 1);
 divider = 65535;
 *nanosec = divider * base;
 return (prescale << 16) | (divider);
}
