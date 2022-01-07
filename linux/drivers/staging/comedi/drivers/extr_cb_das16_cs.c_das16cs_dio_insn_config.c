
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16cs_private {int misc2; } ;
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct das16cs_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int DAS16CS_MISC2_LDIR ;
 scalar_t__ DAS16CS_MISC2_REG ;
 int DAS16CS_MISC2_UDIR ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int das16cs_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct das16cs_private *devpriv = dev->private;
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

 if (s->io_bits & 0xf0)
  devpriv->misc2 |= DAS16CS_MISC2_UDIR;
 else
  devpriv->misc2 &= ~DAS16CS_MISC2_UDIR;
 if (s->io_bits & 0x0f)
  devpriv->misc2 |= DAS16CS_MISC2_LDIR;
 else
  devpriv->misc2 &= ~DAS16CS_MISC2_LDIR;
 outw(devpriv->misc2, dev->iobase + DAS16CS_MISC2_REG);

 return insn->n;
}
