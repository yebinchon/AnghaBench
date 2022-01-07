
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me4000_private {scalar_t__ plx_regbase; } ;
struct comedi_device {struct me4000_private* private; scalar_t__ irq; } ;


 scalar_t__ PLX9052_INTCSR ;
 int comedi_pci_detach (struct comedi_device*) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void me4000_detach(struct comedi_device *dev)
{
 if (dev->irq) {
  struct me4000_private *devpriv = dev->private;


  outl(0, devpriv->plx_regbase + PLX9052_INTCSR);
 }
 comedi_pci_detach(dev);
}
