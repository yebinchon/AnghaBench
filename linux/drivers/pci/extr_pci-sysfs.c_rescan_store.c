
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct pci_bus* pci_find_next_bus (struct pci_bus*) ;
 int pci_lock_rescan_remove () ;
 int pci_rescan_bus (struct pci_bus*) ;
 int pci_unlock_rescan_remove () ;

__attribute__((used)) static ssize_t rescan_store(struct bus_type *bus, const char *buf, size_t count)
{
 unsigned long val;
 struct pci_bus *b = ((void*)0);

 if (kstrtoul(buf, 0, &val) < 0)
  return -EINVAL;

 if (val) {
  pci_lock_rescan_remove();
  while ((b = pci_find_next_bus(b)) != ((void*)0))
   pci_rescan_bus(b);
  pci_unlock_rescan_remove();
 }
 return count;
}
