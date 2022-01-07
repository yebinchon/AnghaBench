
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DAS16_AO_LSB_REG (unsigned int) ;
 scalar_t__ DAS16_AO_MSB_REG (unsigned int) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int das16_ao_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  s->readback[chan] = val;

  val <<= 4;

  outb(val & 0xff, dev->iobase + DAS16_AO_LSB_REG(chan));
  outb((val >> 8) & 0xff, dev->iobase + DAS16_AO_MSB_REG(chan));
 }

 return insn->n;
}
