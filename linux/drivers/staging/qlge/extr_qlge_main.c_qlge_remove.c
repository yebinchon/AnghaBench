
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int timer; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int ql_cancel_all_work_sync (struct ql_adapter*) ;
 int ql_release_all (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void qlge_remove(struct pci_dev *pdev)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct ql_adapter *qdev = netdev_priv(ndev);
 del_timer_sync(&qdev->timer);
 ql_cancel_all_work_sync(qdev);
 unregister_netdev(ndev);
 ql_release_all(pdev);
 pci_disable_device(pdev);
 free_netdev(ndev);
}
