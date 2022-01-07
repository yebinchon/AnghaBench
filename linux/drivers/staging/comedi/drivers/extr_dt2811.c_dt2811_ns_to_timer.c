
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMDF_ROUND_MASK ;


 unsigned long long COMEDI_MIN_SPEED ;
 unsigned long long DT2811_OSC_BASE ;
 unsigned int DT2811_TMRCTR_EXPONENT (unsigned int) ;
 unsigned int DT2811_TMRCTR_MANTISSA (unsigned int) ;
 unsigned int* dt2811_clk_dividers ;
 unsigned int* dt2811_clk_multipliers ;

__attribute__((used)) static unsigned int dt2811_ns_to_timer(unsigned int *nanosec,
           unsigned int flags)
{
 unsigned long long ns;
 unsigned int ns_lo = COMEDI_MIN_SPEED;
 unsigned int ns_hi = 0;
 unsigned int divisor_hi = 0;
 unsigned int divisor_lo = 0;
 unsigned int _div;
 unsigned int _mult;





 for (_div = 0; _div <= 7; _div++) {
  for (_mult = 0; _mult <= 7; _mult++) {
   unsigned int div = dt2811_clk_dividers[_div];
   unsigned int mult = dt2811_clk_multipliers[_mult];
   unsigned long long divider = div * mult;
   unsigned int divisor = DT2811_TMRCTR_MANTISSA(_div) |
            DT2811_TMRCTR_EXPONENT(_mult);







   ns = divider * DT2811_OSC_BASE;
   if (ns > COMEDI_MIN_SPEED)
    continue;


   if (ns <= *nanosec && ns > ns_hi) {
    ns_hi = ns;
    divisor_hi = divisor;
   }

   if (ns >= *nanosec && ns < ns_lo) {
    ns_lo = ns;
    divisor_lo = divisor;
   }
  }
 }






 if (ns_lo == COMEDI_MIN_SPEED) {
  ns_lo = ns_hi;
  divisor_lo = divisor_hi;
 }





 if (ns_hi == 0) {
  ns_hi = ns_lo;
  divisor_hi = divisor_lo;
 }

 switch (flags & CMDF_ROUND_MASK) {
 case 129:
 default:
  if (ns_hi - *nanosec < *nanosec - ns_lo) {
   *nanosec = ns_lo;
   return divisor_lo;
  }
  *nanosec = ns_hi;
  return divisor_hi;
 case 128:
  *nanosec = ns_lo;
  return divisor_lo;
 case 130:
  *nanosec = ns_hi;
  return divisor_hi;
 }
}
