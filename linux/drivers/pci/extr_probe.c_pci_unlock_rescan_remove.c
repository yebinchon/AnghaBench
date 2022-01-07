
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int pci_rescan_remove_lock ;

void pci_unlock_rescan_remove(void)
{
 mutex_unlock(&pci_rescan_remove_lock);
}
