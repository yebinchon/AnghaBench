
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int APCI3120_AO_DATA (unsigned int) ;
 int APCI3120_AO_MUX (unsigned int) ;
 scalar_t__ APCI3120_AO_REG (unsigned int) ;
 unsigned int CR_CHAN (int ) ;
 int apci3120_ao_ready ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int apci3120_ao_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];
  int ret;

  ret = comedi_timeout(dev, s, insn, apci3120_ao_ready, 0);
  if (ret)
   return ret;

  outw(APCI3120_AO_MUX(chan) | APCI3120_AO_DATA(val),
       dev->iobase + APCI3120_AO_REG(chan));

  s->readback[chan] = val;
 }

 return insn->n;
}
