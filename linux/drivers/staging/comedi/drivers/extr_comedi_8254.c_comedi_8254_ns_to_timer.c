
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {unsigned int osc_base; unsigned int next_div; } ;



 unsigned int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int I8254_MAX_COUNT ;

void comedi_8254_ns_to_timer(struct comedi_8254 *i8254,
        unsigned int *nanosec, unsigned int flags)
{
 unsigned int divisor;

 switch (flags & CMDF_ROUND_MASK) {
 default:
 case 129:
  divisor = DIV_ROUND_CLOSEST(*nanosec, i8254->osc_base);
  break;
 case 128:
  divisor = DIV_ROUND_UP(*nanosec, i8254->osc_base);
  break;
 case 130:
  divisor = *nanosec / i8254->osc_base;
  break;
 }
 if (divisor < 2)
  divisor = 2;
 if (divisor > I8254_MAX_COUNT)
  divisor = I8254_MAX_COUNT;

 *nanosec = divisor * i8254->osc_base;
 i8254->next_div = divisor;
}
