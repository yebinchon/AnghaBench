
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ class_mask; scalar_t__ subvendor; scalar_t__ vendor; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ pci_match_one_device (struct pci_device_id const*,struct pci_dev*) ;

const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
      struct pci_dev *dev)
{
 if (ids) {
  while (ids->vendor || ids->subvendor || ids->class_mask) {
   if (pci_match_one_device(ids, dev))
    return ids;
   ids++;
  }
 }
 return ((void*)0);
}
