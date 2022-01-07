
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int clock_ns; } ;
struct comedi_device {struct ni_private* private; } ;



 unsigned int CMDF_ROUND_MASK ;


 int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int DIV_ROUND_UP (unsigned int,unsigned int) ;

__attribute__((used)) static int ni_ns_to_timer(const struct comedi_device *dev,
     unsigned int nanosec, unsigned int flags)
{
 struct ni_private *devpriv = dev->private;
 int divider;

 switch (flags & CMDF_ROUND_MASK) {
 case 129:
 default:
  divider = DIV_ROUND_CLOSEST(nanosec, devpriv->clock_ns);
  break;
 case 130:
  divider = (nanosec) / devpriv->clock_ns;
  break;
 case 128:
  divider = DIV_ROUND_UP(nanosec, devpriv->clock_ns);
  break;
 }
 return divider - 1;
}
