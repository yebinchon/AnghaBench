
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {unsigned long iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned long PCIMDDA_DA_CHAN (unsigned int) ;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static int cb_pcimdda_ao_insn_write(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned long offset = dev->iobase + PCIMDDA_DA_CHAN(chan);
 unsigned int val = s->readback[chan];
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  outb(val & 0x00ff, offset);
  outb((val >> 8) & 0x00ff, offset + 1);
 }
 s->readback[chan] = val;

 return insn->n;
}
