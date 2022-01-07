
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int ME4000_DIO_CTRL_MODE_0 ;
 unsigned int ME4000_DIO_CTRL_MODE_1 ;
 unsigned int ME4000_DIO_CTRL_MODE_2 ;
 unsigned int ME4000_DIO_CTRL_MODE_3 ;
 unsigned int ME4000_DIO_CTRL_MODE_4 ;
 unsigned int ME4000_DIO_CTRL_MODE_5 ;
 unsigned int ME4000_DIO_CTRL_MODE_6 ;
 unsigned int ME4000_DIO_CTRL_MODE_7 ;
 scalar_t__ ME4000_DIO_CTRL_REG ;
 scalar_t__ ME4000_DIO_DIR_REG ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int me4000_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 unsigned int tmp;
 int ret;

 if (chan < 8)
  mask = 0x000000ff;
 else if (chan < 16)
  mask = 0x0000ff00;
 else if (chan < 24)
  mask = 0x00ff0000;
 else
  mask = 0xff000000;

 ret = comedi_dio_insn_config(dev, s, insn, data, mask);
 if (ret)
  return ret;

 tmp = inl(dev->iobase + ME4000_DIO_CTRL_REG);
 tmp &= ~(ME4000_DIO_CTRL_MODE_0 | ME4000_DIO_CTRL_MODE_1 |
   ME4000_DIO_CTRL_MODE_2 | ME4000_DIO_CTRL_MODE_3 |
   ME4000_DIO_CTRL_MODE_4 | ME4000_DIO_CTRL_MODE_5 |
   ME4000_DIO_CTRL_MODE_6 | ME4000_DIO_CTRL_MODE_7);
 if (s->io_bits & 0x000000ff)
  tmp |= ME4000_DIO_CTRL_MODE_0;
 if (s->io_bits & 0x0000ff00)
  tmp |= ME4000_DIO_CTRL_MODE_2;
 if (s->io_bits & 0x00ff0000)
  tmp |= ME4000_DIO_CTRL_MODE_4;
 if (s->io_bits & 0xff000000)
  tmp |= ME4000_DIO_CTRL_MODE_6;






 if (inl(dev->iobase + ME4000_DIO_DIR_REG)) {
  s->io_bits |= 0x000000ff;
  s->io_bits &= ~0x0000ff00;
  tmp |= ME4000_DIO_CTRL_MODE_0;
  tmp &= ~(ME4000_DIO_CTRL_MODE_2 | ME4000_DIO_CTRL_MODE_3);
 }

 outl(tmp, dev->iobase + ME4000_DIO_CTRL_REG);

 return insn->n;
}
