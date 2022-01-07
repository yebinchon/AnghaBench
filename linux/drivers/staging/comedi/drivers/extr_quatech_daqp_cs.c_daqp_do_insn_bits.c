
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;


 scalar_t__ DAQP_DO_REG ;
 int EIO ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int daqp_do_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct daqp_private *devpriv = dev->private;

 if (devpriv->stop)
  return -EIO;

 if (comedi_dio_update_state(s, data))
  outb(s->state, dev->iobase + DAQP_DO_REG);

 data[1] = s->state;

 return insn->n;
}
