
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ DI_REG ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static int di_rbits(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 unsigned int bits;

 bits = readb(dev->mmio + DI_REG);
 bits &= 0xf;
 data[1] = bits;
 data[0] = 0;

 return insn->n;
}
