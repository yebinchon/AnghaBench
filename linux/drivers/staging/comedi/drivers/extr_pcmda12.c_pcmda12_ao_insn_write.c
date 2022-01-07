
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmda12_private {int simultaneous_xfer_mode; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {unsigned int iobase; struct pcmda12_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int inb (unsigned long) ;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static int pcmda12_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct pcmda12_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 unsigned long ioreg = dev->iobase + (chan * 2);
 int i;

 for (i = 0; i < insn->n; ++i) {
  val = data[i];
  outb(val & 0xff, ioreg);
  outb((val >> 8) & 0xff, ioreg + 1);





  if (!devpriv->simultaneous_xfer_mode)
   inb(ioreg);
 }
 s->readback[chan] = val;

 return insn->n;
}
