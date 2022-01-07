
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_device {scalar_t__ hw_dev; } ;


 struct pci_dev* to_pci_dev (scalar_t__) ;

struct pci_dev *comedi_to_pci_dev(struct comedi_device *dev)
{
 return dev->hw_dev ? to_pci_dev(dev->hw_dev) : ((void*)0);
}
