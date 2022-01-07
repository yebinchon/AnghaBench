
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int apci3xxx_reset (struct comedi_device*) ;
 int comedi_pci_detach (struct comedi_device*) ;

__attribute__((used)) static void apci3xxx_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  apci3xxx_reset(dev);
 comedi_pci_detach(dev);
}
