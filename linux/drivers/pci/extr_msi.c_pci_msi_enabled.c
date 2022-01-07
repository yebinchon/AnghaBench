
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_msi_enable ;

int pci_msi_enabled(void)
{
 return pci_msi_enable;
}
