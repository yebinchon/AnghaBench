
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ RTI800_DI ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int rti800_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 data[1] = inb(dev->iobase + RTI800_DI);
 return insn->n;
}
