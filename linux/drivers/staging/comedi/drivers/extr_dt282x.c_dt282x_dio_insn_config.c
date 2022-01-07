
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int dacsr; } ;
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int DT2821_DACSR_HBOE ;
 int DT2821_DACSR_LBOE ;
 scalar_t__ DT2821_DACSR_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int dt282x_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct dt282x_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 int ret;

 if (chan < 8)
  mask = 0x00ff;
 else
  mask = 0xff00;

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;

 devpriv->dacsr &= ~(DT2821_DACSR_LBOE | DT2821_DACSR_HBOE);
 if (s->io_bits & 0x00ff)
  devpriv->dacsr |= DT2821_DACSR_LBOE;
 if (s->io_bits & 0xff00)
  devpriv->dacsr |= DT2821_DACSR_HBOE;

 outw(devpriv->dacsr, dev->iobase + DT2821_DACSR_REG);

 return insn->n;
}
