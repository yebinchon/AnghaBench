
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_acpi_program_hp_params (struct pci_dev*) ;
 int pci_configure_eetlp_prefix (struct pci_dev*) ;
 int pci_configure_extended_tags (struct pci_dev*,int *) ;
 int pci_configure_ltr (struct pci_dev*) ;
 int pci_configure_mps (struct pci_dev*) ;
 int pci_configure_relaxed_ordering (struct pci_dev*) ;
 int pci_configure_serr (struct pci_dev*) ;

__attribute__((used)) static void pci_configure_device(struct pci_dev *dev)
{
 pci_configure_mps(dev);
 pci_configure_extended_tags(dev, ((void*)0));
 pci_configure_relaxed_ordering(dev);
 pci_configure_ltr(dev);
 pci_configure_eetlp_prefix(dev);
 pci_configure_serr(dev);

 pci_acpi_program_hp_params(dev);
}
