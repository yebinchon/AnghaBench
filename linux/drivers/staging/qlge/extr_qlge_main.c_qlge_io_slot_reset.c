
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int flags; int ndev; } ;
struct pci_dev {int error_state; } ;
struct net_device {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int QL_EEH_FATAL ;
 int drv ;
 int ifup ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int pci_channel_io_normal ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 scalar_t__ ql_adapter_reset (struct ql_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static pci_ers_result_t qlge_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct ql_adapter *qdev = netdev_priv(ndev);

 pdev->error_state = pci_channel_io_normal;

 pci_restore_state(pdev);
 if (pci_enable_device(pdev)) {
  netif_err(qdev, ifup, qdev->ndev,
     "Cannot re-enable PCI device after reset.\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 pci_set_master(pdev);

 if (ql_adapter_reset(qdev)) {
  netif_err(qdev, drv, qdev->ndev, "reset FAILED!\n");
  set_bit(QL_EEH_FATAL, &qdev->flags);
  return PCI_ERS_RESULT_DISCONNECT;
 }

 return PCI_ERS_RESULT_RECOVERED;
}
