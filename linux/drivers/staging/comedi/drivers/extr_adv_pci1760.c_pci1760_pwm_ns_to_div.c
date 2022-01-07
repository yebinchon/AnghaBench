
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;
 unsigned int PCI1760_PWM_TIMEBASE ;

__attribute__((used)) static int pci1760_pwm_ns_to_div(unsigned int flags, unsigned int ns)
{
 unsigned int divisor;

 switch (flags) {
 case 129:
  divisor = DIV_ROUND_CLOSEST(ns, PCI1760_PWM_TIMEBASE);
  break;
 case 128:
  divisor = DIV_ROUND_UP(ns, PCI1760_PWM_TIMEBASE);
  break;
 case 130:
  divisor = ns / PCI1760_PWM_TIMEBASE;
  break;
 default:
  return -EINVAL;
 }

 if (divisor < 1)
  divisor = 1;
 if (divisor > 0xffff)
  divisor = 0xffff;

 return divisor;
}
