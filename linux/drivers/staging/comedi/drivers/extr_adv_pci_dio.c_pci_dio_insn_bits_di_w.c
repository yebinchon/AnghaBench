
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {unsigned long iobase; } ;


 int inw (unsigned long) ;

__attribute__((used)) static int pci_dio_insn_bits_di_w(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned long reg = (unsigned long)s->private;
 unsigned long iobase = dev->iobase + reg;

 data[1] = inw(iobase);
 if (s->n_chan > 16)
  data[1] |= (inw(iobase + 2) << 16);

 return insn->n;
}
