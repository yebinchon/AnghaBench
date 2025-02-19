
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int MF6X4_DIN_MASK ;
 scalar_t__ MF6X4_DIN_REG ;
 unsigned int ioread16 (scalar_t__) ;

__attribute__((used)) static int mf6x4_di_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 data[1] = ioread16(dev->mmio + MF6X4_DIN_REG) & MF6X4_DIN_MASK;

 return insn->n;
}
