
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ FL512_AO_DATA_REG (unsigned int) ;
 scalar_t__ FL512_AO_TRIG_REG (unsigned int) ;
 int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int fl512_ao_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];


  outb(val & 0x0ff, dev->iobase + FL512_AO_DATA_REG(chan));
  outb((val >> 8) & 0xf, dev->iobase + FL512_AO_DATA_REG(chan));
  inb(dev->iobase + FL512_AO_TRIG_REG(chan));
 }
 s->readback[chan] = val;

 return insn->n;
}
