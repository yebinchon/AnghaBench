
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; int state; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 int S526_DIO_CTRL_GRP1_OUT ;
 int S526_DIO_CTRL_GRP2_OUT ;
 scalar_t__ S526_DIO_CTRL_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int s526_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 int ret;





 if (chan < 4)
  mask = 0x0f;
 else
  mask = 0xf0;

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;

 if (s->io_bits & 0x0f)
  s->state |= S526_DIO_CTRL_GRP1_OUT;
 else
  s->state &= ~S526_DIO_CTRL_GRP1_OUT;
 if (s->io_bits & 0xf0)
  s->state |= S526_DIO_CTRL_GRP2_OUT;
 else
  s->state &= ~S526_DIO_CTRL_GRP2_OUT;

 outw(s->state, dev->iobase + S526_DIO_CTRL_REG);

 return insn->n;
}
