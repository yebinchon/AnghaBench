
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMDF_ROUND_MASK ;


 int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int DIV_ROUND_UP (unsigned int,int) ;

__attribute__((used)) static int s626_ns_to_timer(unsigned int *nanosec, unsigned int flags)
{
 int divider, base;

 base = 500;

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

 *nanosec = base * divider;
 return divider - 1;
}
