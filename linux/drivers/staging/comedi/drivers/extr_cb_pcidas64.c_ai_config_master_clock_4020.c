
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int divisor; unsigned int chanspec; } ;
struct pcidas64_private {TYPE_1__ ext_clock; } ;
struct comedi_device {struct pcidas64_private* private; } ;



 int EAGAIN ;
 int EINVAL ;

__attribute__((used)) static int ai_config_master_clock_4020(struct comedi_device *dev,
           unsigned int *data)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned int divisor = data[4];
 int retval = 0;

 if (divisor < 2) {
  divisor = 2;
  retval = -EAGAIN;
 }

 switch (data[1]) {
 case 128:
  devpriv->ext_clock.divisor = divisor;
  devpriv->ext_clock.chanspec = data[2];
  break;
 default:
  return -EINVAL;
 }

 data[4] = divisor;

 return retval ? retval : 5;
}
