
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int state_saved; int * saved_config_space; } ;


 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_save_dpc_state (struct pci_dev*) ;
 int pci_save_ltr_state (struct pci_dev*) ;
 int pci_save_pcie_state (struct pci_dev*) ;
 int pci_save_pcix_state (struct pci_dev*) ;
 int pci_save_vc_state (struct pci_dev*) ;

int pci_save_state(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < 16; i++)
  pci_read_config_dword(dev, i * 4, &dev->saved_config_space[i]);
 dev->state_saved = 1;

 i = pci_save_pcie_state(dev);
 if (i != 0)
  return i;

 i = pci_save_pcix_state(dev);
 if (i != 0)
  return i;

 pci_save_ltr_state(dev);
 pci_save_dpc_state(dev);
 return pci_save_vc_state(dev);
}
