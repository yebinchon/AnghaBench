
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct atao_private* private; } ;
struct atao_private {int cfg3; } ;


 int ATAO_CFG3_DOUTEN1 ;
 int ATAO_CFG3_DOUTEN2 ;
 scalar_t__ ATAO_CFG3_REG ;
 unsigned int CR_CHAN (int ) ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int atao_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct atao_private *devpriv = dev->private;
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
  devpriv->cfg3 |= ATAO_CFG3_DOUTEN1;
 else
  devpriv->cfg3 &= ~ATAO_CFG3_DOUTEN1;
 if (s->io_bits & 0xf0)
  devpriv->cfg3 |= ATAO_CFG3_DOUTEN2;
 else
  devpriv->cfg3 &= ~ATAO_CFG3_DOUTEN2;

 outw(devpriv->cfg3, dev->iobase + ATAO_CFG3_REG);

 return insn->n;
}
