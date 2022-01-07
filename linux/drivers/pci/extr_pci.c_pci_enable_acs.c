
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_acs_enable ;
 int pci_dev_specific_enable_acs (struct pci_dev*) ;
 int pci_disable_acs_redir (struct pci_dev*) ;
 int pci_std_enable_acs (struct pci_dev*) ;

void pci_enable_acs(struct pci_dev *dev)
{
 if (!pci_acs_enable)
  goto disable_acs_redir;

 if (!pci_dev_specific_enable_acs(dev))
  goto disable_acs_redir;

 pci_std_enable_acs(dev);

disable_acs_redir:







 pci_disable_acs_redir(dev);
}
