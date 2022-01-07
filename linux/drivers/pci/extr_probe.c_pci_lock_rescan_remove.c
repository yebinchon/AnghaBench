
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int pci_rescan_remove_lock ;

void pci_lock_rescan_remove(void)
{
 mutex_lock(&pci_rescan_remove_lock);
}
