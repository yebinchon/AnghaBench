
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct atmio16d_private* private; } ;
struct atmio16d_private {scalar_t__ dac0_coding; scalar_t__ dac1_coding; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int DAC0_REG ;
 unsigned int DAC1_REG ;
 scalar_t__ dac_2comp ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int atmio16d_ao_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct atmio16d_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int reg = (chan) ? DAC1_REG : DAC0_REG;
 bool munge = 0;
 int i;

 if (chan == 0 && devpriv->dac0_coding == dac_2comp)
  munge = 1;
 if (chan == 1 && devpriv->dac1_coding == dac_2comp)
  munge = 1;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  s->readback[chan] = val;

  if (munge)
   val ^= 0x800;

  outw(val, dev->iobase + reg);
 }

 return insn->n;
}
