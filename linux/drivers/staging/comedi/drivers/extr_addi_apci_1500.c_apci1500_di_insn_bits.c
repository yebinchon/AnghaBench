
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct apci1500_private* private; } ;
struct apci1500_private {scalar_t__ addon; } ;


 scalar_t__ APCI1500_DI_REG ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int apci1500_di_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct apci1500_private *devpriv = dev->private;

 data[1] = inw(devpriv->addon + APCI1500_DI_REG);

 return insn->n;
}
