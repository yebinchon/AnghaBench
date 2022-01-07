
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int kobj; } ;


 int ENOMEM ;
 struct kset* bus_get_kset (int *) ;
 int kset_create_and_add (char*,int *,int *) ;
 int pci_bus_type ;
 int pci_slots_kset ;
 int pr_err (char*) ;

__attribute__((used)) static int pci_slot_init(void)
{
 struct kset *pci_bus_kset;

 pci_bus_kset = bus_get_kset(&pci_bus_type);
 pci_slots_kset = kset_create_and_add("slots", ((void*)0),
      &pci_bus_kset->kobj);
 if (!pci_slots_kset) {
  pr_err("PCI: Slot initialization failure\n");
  return -ENOMEM;
 }
 return 0;
}
