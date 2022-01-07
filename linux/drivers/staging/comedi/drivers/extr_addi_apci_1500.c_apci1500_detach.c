
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct apci1500_private* private; } ;
struct apci1500_private {scalar_t__ amcc; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 int comedi_pci_detach (struct comedi_device*) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void apci1500_detach(struct comedi_device *dev)
{
 struct apci1500_private *devpriv = dev->private;

 if (devpriv->amcc)
  outl(0x0, devpriv->amcc + AMCC_OP_REG_INTCSR);
 comedi_pci_detach(dev);
}
