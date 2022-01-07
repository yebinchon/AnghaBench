
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int inl (scalar_t__) ;

__attribute__((used)) static int adl_pci7x3x_di_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 unsigned long reg = (unsigned long)s->private;

 data[1] = inl(dev->iobase + reg);

 return insn->n;
}
