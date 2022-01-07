
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_CAP_ID_EXP ;
 int PCI_CAP_ID_PCIX ;
 int PCI_EXP_SAVE_REGS ;
 int PCI_EXT_CAP_ID_LTR ;
 int pci_add_cap_save_buffer (struct pci_dev*,int ,int) ;
 int pci_add_ext_cap_save_buffer (struct pci_dev*,int ,int) ;
 int pci_allocate_vc_save_buffers (struct pci_dev*) ;
 int pci_err (struct pci_dev*,char*) ;

void pci_allocate_cap_save_buffers(struct pci_dev *dev)
{
 int error;

 error = pci_add_cap_save_buffer(dev, PCI_CAP_ID_EXP,
     PCI_EXP_SAVE_REGS * sizeof(u16));
 if (error)
  pci_err(dev, "unable to preallocate PCI Express save buffer\n");

 error = pci_add_cap_save_buffer(dev, PCI_CAP_ID_PCIX, sizeof(u16));
 if (error)
  pci_err(dev, "unable to preallocate PCI-X save buffer\n");

 error = pci_add_ext_cap_save_buffer(dev, PCI_EXT_CAP_ID_LTR,
         2 * sizeof(u16));
 if (error)
  pci_err(dev, "unable to allocate suspend buffer for LTR\n");

 pci_allocate_vc_save_buffers(dev);
}
