
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int * procent; } ;


 int proc_remove (int *) ;

int pci_proc_detach_device(struct pci_dev *dev)
{
 proc_remove(dev->procent);
 dev->procent = ((void*)0);
 return 0;
}
