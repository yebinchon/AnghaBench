
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {scalar_t__ daqio; } ;
struct comedi_device {struct pci230_private* private; } ;


 scalar_t__ PCI230P2_DACDATA ;
 int outw (int ,scalar_t__) ;
 int pci230_ao_mangle_datum (struct comedi_device*,unsigned short) ;

__attribute__((used)) static void pci230_ao_write_fifo(struct comedi_device *dev,
     unsigned short datum, unsigned int chan)
{
 struct pci230_private *devpriv = dev->private;


 outw(pci230_ao_mangle_datum(dev, datum),
      devpriv->daqio + PCI230P2_DACDATA);
}
