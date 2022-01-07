
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_OUTPUT ;
 unsigned int CR_CHAN (int ) ;
 int CSCDR ;
 int CSCIR ;
 unsigned int PAMR ;
 unsigned int PBMR ;
 unsigned int PCMR ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 unsigned int inb (int ) ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static int dnp_dio_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int mask;
 unsigned int val;
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;

 if (chan < 8) {
  mask = 1 << chan;
  outb(PAMR, CSCIR);
 } else if (chan < 16) {
  mask = 1 << (chan - 8);
  outb(PBMR, CSCIR);
 } else {
  mask = 1 << ((chan - 16) * 2);
  outb(PCMR, CSCIR);
 }

 val = inb(CSCDR);
 if (data[0] == COMEDI_OUTPUT)
  val |= mask;
 else
  val &= ~mask;
 outb(val, CSCDR);

 return insn->n;
}
