
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int pci9111_reset (struct comedi_device*) ;

__attribute__((used)) static void pci9111_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  pci9111_reset(dev);
 comedi_pci_detach(dev);
}
