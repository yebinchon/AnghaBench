
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int timer; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;


 int del_timer_sync (int *) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int ql_adapter_down (struct ql_adapter*) ;
 int ql_wol (struct ql_adapter*) ;

__attribute__((used)) static int qlge_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct ql_adapter *qdev = netdev_priv(ndev);
 int err;

 netif_device_detach(ndev);
 del_timer_sync(&qdev->timer);

 if (netif_running(ndev)) {
  err = ql_adapter_down(qdev);
  if (!err)
   return err;
 }

 ql_wol(qdev);
 err = pci_save_state(pdev);
 if (err)
  return err;

 pci_disable_device(pdev);

 pci_set_power_state(pdev, pci_choose_state(pdev, state));

 return 0;
}
