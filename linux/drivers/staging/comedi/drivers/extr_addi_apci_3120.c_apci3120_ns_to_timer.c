
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct apci3120_private* private; } ;
struct apci3120_private {unsigned int osc_base; } ;



 unsigned int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int apci3120_ns_to_timer(struct comedi_device *dev,
      unsigned int timer,
      unsigned int ns,
      unsigned int flags)
{
 struct apci3120_private *devpriv = dev->private;
 unsigned int prescale = (timer == 0) ? 10 : 1000;
 unsigned int timer_base = devpriv->osc_base * prescale;
 unsigned int divisor;

 switch (flags & CMDF_ROUND_MASK) {
 case 128:
  divisor = DIV_ROUND_UP(ns, timer_base);
  break;
 case 130:
  divisor = ns / timer_base;
  break;
 case 129:
 default:
  divisor = DIV_ROUND_CLOSEST(ns, timer_base);
  break;
 }

 if (timer == 2) {

  if (divisor > 0x00ffffff)
   divisor = 0x00ffffff;
 } else {

  if (divisor > 0xffff)
   divisor = 0xffff;
 }

 if (divisor < 2)
  divisor = 2;

 return divisor;
}
