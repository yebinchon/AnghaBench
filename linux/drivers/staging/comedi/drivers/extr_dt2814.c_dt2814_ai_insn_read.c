
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DT2814_CSR ;
 scalar_t__ DT2814_DATA ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int dt2814_ai_eoc ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dt2814_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int n, hi, lo;
 int chan;
 int ret;

 for (n = 0; n < insn->n; n++) {
  chan = CR_CHAN(insn->chanspec);

  outb(chan, dev->iobase + DT2814_CSR);

  ret = comedi_timeout(dev, s, insn, dt2814_ai_eoc, 0);
  if (ret)
   return ret;

  hi = inb(dev->iobase + DT2814_DATA);
  lo = inb(dev->iobase + DT2814_DATA);

  data[n] = (hi << 4) | (lo >> 4);
 }

 return n;
}
