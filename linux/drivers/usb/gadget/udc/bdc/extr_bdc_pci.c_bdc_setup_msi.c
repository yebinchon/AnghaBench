
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_enable_msi (struct pci_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static int bdc_setup_msi(struct pci_dev *pci)
{
 int ret;

 ret = pci_enable_msi(pci);
 if (ret) {
  pr_err("failed to allocate MSI entry\n");
  return ret;
 }

 return ret;
}
