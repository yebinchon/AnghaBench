
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int reset_fn; } ;


 int pci_aer_init (struct pci_dev*) ;
 int pci_allocate_cap_save_buffers (struct pci_dev*) ;
 int pci_ats_init (struct pci_dev*) ;
 int pci_configure_ari (struct pci_dev*) ;
 int pci_ea_init (struct pci_dev*) ;
 int pci_enable_acs (struct pci_dev*) ;
 int pci_iov_init (struct pci_dev*) ;
 int pci_msi_setup_pci_dev (struct pci_dev*) ;
 int pci_pm_init (struct pci_dev*) ;
 scalar_t__ pci_probe_reset_function (struct pci_dev*) ;
 int pci_ptm_init (struct pci_dev*) ;
 int pci_vpd_init (struct pci_dev*) ;
 int pcie_report_downtraining (struct pci_dev*) ;

__attribute__((used)) static void pci_init_capabilities(struct pci_dev *dev)
{

 pci_ea_init(dev);


 pci_msi_setup_pci_dev(dev);


 pci_allocate_cap_save_buffers(dev);


 pci_pm_init(dev);


 pci_vpd_init(dev);


 pci_configure_ari(dev);


 pci_iov_init(dev);


 pci_ats_init(dev);


 pci_enable_acs(dev);


 pci_ptm_init(dev);


 pci_aer_init(dev);

 pcie_report_downtraining(dev);

 if (pci_probe_reset_function(dev) == 0)
  dev->reset_fn = 1;
}
