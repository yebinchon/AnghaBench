
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcistub_device_id {scalar_t__ domain; scalar_t__ bus; scalar_t__ devfn; } ;
struct pci_dev {scalar_t__ devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; struct pci_dev* self; } ;


 scalar_t__ pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static int pcistub_match_one(struct pci_dev *dev,
        struct pcistub_device_id *pdev_id)
{



 for (; dev != ((void*)0); dev = dev->bus->self) {
  if (pci_domain_nr(dev->bus) == pdev_id->domain
      && dev->bus->number == pdev_id->bus
      && dev->devfn == pdev_id->devfn)
   return 1;


  if (dev == dev->bus->self)
   break;
 }

 return 0;
}
