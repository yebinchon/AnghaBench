
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int index; int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI16XX_DIR_REG (int ) ;
 unsigned int CR_CHAN (int ) ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static int apci16xx_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
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

 outl(s->io_bits, dev->iobase + APCI16XX_DIR_REG(s->index));

 return insn->n;
}
