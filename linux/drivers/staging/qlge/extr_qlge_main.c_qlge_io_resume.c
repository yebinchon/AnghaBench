
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int timer; int ndev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int HZ ;
 int ifup ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int qlge_open (struct net_device*) ;

__attribute__((used)) static void qlge_io_resume(struct pci_dev *pdev)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct ql_adapter *qdev = netdev_priv(ndev);
 int err = 0;

 if (netif_running(ndev)) {
  err = qlge_open(ndev);
  if (err) {
   netif_err(qdev, ifup, qdev->ndev,
      "Device initialization failed after reset.\n");
   return;
  }
 } else {
  netif_err(qdev, ifup, qdev->ndev,
     "Device was not running prior to EEH.\n");
 }
 mod_timer(&qdev->timer, jiffies + (5*HZ));
 netif_device_attach(ndev);
}
