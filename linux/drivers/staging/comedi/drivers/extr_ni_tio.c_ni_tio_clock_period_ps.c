
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ni_gpct {int clock_period_ps; } ;


 int EINVAL ;
 unsigned int NI_GPCT_CLOCK_SRC_SELECT_MASK ;

 unsigned int NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK ;







__attribute__((used)) static int ni_tio_clock_period_ps(const struct ni_gpct *counter,
      unsigned int generic_clock_source,
      u64 *period_ps)
{
 u64 clock_period_ps;

 switch (generic_clock_source & NI_GPCT_CLOCK_SRC_SELECT_MASK) {
 case 130:
  clock_period_ps = 50000;
  break;
 case 129:
  clock_period_ps = 10000000;
  break;
 case 128:
  clock_period_ps = 12500;
  break;
 case 131:
  clock_period_ps = 100000;
  break;
 default:




  *period_ps = counter->clock_period_ps;
  return 0;
 }

 switch (generic_clock_source & NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK) {
 case 134:
  break;
 case 133:
  clock_period_ps *= 2;
  break;
 case 132:
  clock_period_ps *= 8;
  break;
 default:
  return -EINVAL;
 }
 *period_ps = clock_period_ps;
 return 0;
}
