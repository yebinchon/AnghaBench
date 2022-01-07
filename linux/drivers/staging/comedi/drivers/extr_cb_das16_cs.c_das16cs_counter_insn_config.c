
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16cs_private {int misc2; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; struct das16cs_private* private; } ;


 int DAS16CS_MISC2_CTR1 ;
 scalar_t__ DAS16CS_MISC2_REG ;
 int EINVAL ;
 unsigned int I8254_OSC_BASE_100KHZ ;


 int outw (int,scalar_t__) ;

__attribute__((used)) static int das16cs_counter_insn_config(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_insn *insn,
           unsigned int *data)
{
 struct das16cs_private *devpriv = dev->private;

 switch (data[0]) {
 case 128:
  switch (data[1]) {
  case 0:
   devpriv->misc2 |= DAS16CS_MISC2_CTR1;
   break;
  case 1:
   devpriv->misc2 &= ~DAS16CS_MISC2_CTR1;
   break;
  default:
   return -EINVAL;
  }
  outw(devpriv->misc2, dev->iobase + DAS16CS_MISC2_REG);
  break;
 case 129:
  if (devpriv->misc2 & DAS16CS_MISC2_CTR1) {
   data[1] = 0;
   data[2] = I8254_OSC_BASE_100KHZ;
  } else {
   data[1] = 1;
   data[2] = 0;
  }
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
