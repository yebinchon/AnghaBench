
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;
struct comedi_driver {int dummy; } ;


 int comedi_driver_unregister (struct comedi_driver*) ;
 int pci_unregister_driver (struct pci_driver*) ;

void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
      struct pci_driver *pci_driver)
{
 pci_unregister_driver(pci_driver);
 comedi_driver_unregister(comedi_driver);
}
