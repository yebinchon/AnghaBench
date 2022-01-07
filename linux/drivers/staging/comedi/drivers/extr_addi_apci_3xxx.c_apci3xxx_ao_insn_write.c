
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int apci3xxx_ao_eoc ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int apci3xxx_ao_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 int ret;
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];


  writel(range, dev->mmio + 96);


  writel((val << 8) | chan, dev->mmio + 100);


  ret = comedi_timeout(dev, s, insn, apci3xxx_ao_eoc, 0);
  if (ret)
   return ret;

  s->readback[chan] = val;
 }

 return insn->n;
}
