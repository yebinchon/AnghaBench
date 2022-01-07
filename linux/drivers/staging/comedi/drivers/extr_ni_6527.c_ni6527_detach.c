
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int ni6527_reset (struct comedi_device*) ;

__attribute__((used)) static void ni6527_detach(struct comedi_device *dev)
{
 if (dev->mmio)
  ni6527_reset(dev);
 comedi_pci_detach(dev);
}
