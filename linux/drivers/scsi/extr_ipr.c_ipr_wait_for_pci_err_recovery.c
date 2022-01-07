
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int eeh_wait_q; struct pci_dev* pdev; } ;


 int IPR_PCI_ERROR_RECOVERY_TIMEOUT ;
 scalar_t__ pci_channel_offline (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void ipr_wait_for_pci_err_recovery(struct ipr_ioa_cfg *ioa_cfg)
{
 struct pci_dev *pdev = ioa_cfg->pdev;

 if (pci_channel_offline(pdev)) {
  wait_event_timeout(ioa_cfg->eeh_wait_q,
       !pci_channel_offline(pdev),
       IPR_PCI_ERROR_RECOVERY_TIMEOUT);
  pci_restore_state(pdev);
 }
}
