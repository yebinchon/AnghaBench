
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_aer_exit (struct pci_dev*) ;
 int pci_free_cap_save_buffers (struct pci_dev*) ;
 int pci_iov_release (struct pci_dev*) ;
 int pci_vpd_release (struct pci_dev*) ;

__attribute__((used)) static void pci_release_capabilities(struct pci_dev *dev)
{
 pci_aer_exit(dev);
 pci_vpd_release(dev);
 pci_iov_release(dev);
 pci_free_cap_save_buffers(dev);
}
