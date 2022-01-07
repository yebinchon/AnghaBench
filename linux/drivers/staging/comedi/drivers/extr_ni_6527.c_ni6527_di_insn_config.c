
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni6527_private {int filter_enable; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct ni6527_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;

 int ni6527_set_filter_enable (struct comedi_device*,int) ;
 int ni6527_set_filter_interval (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int ni6527_di_insn_config(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct ni6527_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int interval;

 switch (data[0]) {
 case 128:





  interval = (data[1] + 100) / 200;
  data[1] = interval * 200;

  if (interval) {
   ni6527_set_filter_interval(dev, interval);
   devpriv->filter_enable |= 1 << chan;
  } else {
   devpriv->filter_enable &= ~(1 << chan);
  }
  ni6527_set_filter_enable(dev, devpriv->filter_enable);
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
