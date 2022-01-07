
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMDF_ROUND_MASK ;


 int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int DIV_ROUND_UP (unsigned int,int) ;

__attribute__((used)) static int rtd_ns_to_timer_base(unsigned int *nanosec,
    unsigned int flags, int base)
{
 int divider;

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
 if (divider < 2)
  divider = 2;






 *nanosec = base * divider;
 return divider - 1;
}
