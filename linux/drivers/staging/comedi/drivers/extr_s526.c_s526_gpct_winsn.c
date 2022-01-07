
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s526_private {int* gpct_config; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct s526_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;



 scalar_t__ S526_GPCT_MODE_REG (unsigned int) ;
 int inw (scalar_t__) ;
 int s526_gpct_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int s526_gpct_winsn(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct s526_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);

 inw(dev->iobase + S526_GPCT_MODE_REG(chan));


 switch (devpriv->gpct_config[chan]) {
 case 130:







  if ((data[1] <= data[0]) || !data[0])
   return -EINVAL;


 case 129:
 case 128:
  s526_gpct_write(dev, chan, data[0]);
  break;

 default:
  return -EINVAL;
 }

 return insn->n;
}
