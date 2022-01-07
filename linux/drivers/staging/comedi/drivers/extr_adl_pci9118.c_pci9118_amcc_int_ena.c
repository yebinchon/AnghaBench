
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {scalar_t__ iobase_a; } ;
struct comedi_device {struct pci9118_private* private; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static void pci9118_amcc_int_ena(struct comedi_device *dev, bool enable)
{
 struct pci9118_private *devpriv = dev->private;
 unsigned int intcsr;


 intcsr = inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR);
 if (enable)
  intcsr |= 0x1f00;
 else
  intcsr &= ~0x1f00;
 outl(intcsr, devpriv->iobase_a + AMCC_OP_REG_INTCSR);
}
