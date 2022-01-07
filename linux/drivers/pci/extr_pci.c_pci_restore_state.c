
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int state_saved; } ;


 int pci_cleanup_aer_error_status_regs (struct pci_dev*) ;
 int pci_enable_acs (struct pci_dev*) ;
 int pci_restore_ats_state (struct pci_dev*) ;
 int pci_restore_config_space (struct pci_dev*) ;
 int pci_restore_dpc_state (struct pci_dev*) ;
 int pci_restore_iov_state (struct pci_dev*) ;
 int pci_restore_ltr_state (struct pci_dev*) ;
 int pci_restore_msi_state (struct pci_dev*) ;
 int pci_restore_pasid_state (struct pci_dev*) ;
 int pci_restore_pcie_state (struct pci_dev*) ;
 int pci_restore_pcix_state (struct pci_dev*) ;
 int pci_restore_pri_state (struct pci_dev*) ;
 int pci_restore_rebar_state (struct pci_dev*) ;
 int pci_restore_vc_state (struct pci_dev*) ;

void pci_restore_state(struct pci_dev *dev)
{
 if (!dev->state_saved)
  return;





 pci_restore_ltr_state(dev);

 pci_restore_pcie_state(dev);
 pci_restore_pasid_state(dev);
 pci_restore_pri_state(dev);
 pci_restore_ats_state(dev);
 pci_restore_vc_state(dev);
 pci_restore_rebar_state(dev);
 pci_restore_dpc_state(dev);

 pci_cleanup_aer_error_status_regs(dev);

 pci_restore_config_space(dev);

 pci_restore_pcix_state(dev);
 pci_restore_msi_state(dev);


 pci_enable_acs(dev);
 pci_restore_iov_state(dev);

 dev->state_saved = 0;
}
