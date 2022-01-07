
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DT2811_DADATA_HI_REG (unsigned int) ;
 scalar_t__ DT2811_DADATA_LO_REG (unsigned int) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int dt2811_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  outb(val & 0xff, dev->iobase + DT2811_DADATA_LO_REG(chan));
  outb((val >> 8) & 0xff,
       dev->iobase + DT2811_DADATA_HI_REG(chan));
 }
 s->readback[chan] = val;

 return insn->n;
}
