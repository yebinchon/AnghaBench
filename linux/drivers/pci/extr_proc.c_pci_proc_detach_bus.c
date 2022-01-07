
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int procdir; } ;


 int proc_remove (int ) ;

int pci_proc_detach_bus(struct pci_bus *bus)
{
 proc_remove(bus->procdir);
 return 0;
}
