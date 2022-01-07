
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc236_private {scalar_t__ lcr_iobase; } ;
struct comedi_device {struct pc236_private* private; } ;


 int PCI236_INTR_DISABLE ;
 int PCI236_INTR_ENABLE ;
 scalar_t__ PLX9052_INTCSR ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void pci236_intr_update_cb(struct comedi_device *dev, bool enable)
{
 struct pc236_private *devpriv = dev->private;


 outl(enable ? PCI236_INTR_ENABLE : PCI236_INTR_DISABLE,
      devpriv->lcr_iobase + PLX9052_INTCSR);
}
