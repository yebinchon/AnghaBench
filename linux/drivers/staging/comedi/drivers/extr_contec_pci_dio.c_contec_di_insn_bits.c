
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PIO1616L_DI_REG ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int contec_di_insn_bits(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 data[1] = inw(dev->iobase + PIO1616L_DI_REG);

 return insn->n;
}
