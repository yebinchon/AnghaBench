
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ class_mask; scalar_t__ subvendor; scalar_t__ vendor; } ;
struct pci_dev {int dummy; } ;


 int WARN_ON (int ) ;
 int in_interrupt () ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_dev_by_id (struct pci_device_id const*,int *) ;

int pci_dev_present(const struct pci_device_id *ids)
{
 struct pci_dev *found = ((void*)0);

 WARN_ON(in_interrupt());
 while (ids->vendor || ids->subvendor || ids->class_mask) {
  found = pci_get_dev_by_id(ids, ((void*)0));
  if (found) {
   pci_dev_put(found);
   return 1;
  }
  ids++;
 }

 return 0;
}
