
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int mpi_coredump; scalar_t__ doorbell_area; scalar_t__ reg_base; int * workqueue; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int destroy_workqueue (int *) ;
 int iounmap (scalar_t__) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int vfree (int ) ;

__attribute__((used)) static void ql_release_all(struct pci_dev *pdev)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct ql_adapter *qdev = netdev_priv(ndev);

 if (qdev->workqueue) {
  destroy_workqueue(qdev->workqueue);
  qdev->workqueue = ((void*)0);
 }

 if (qdev->reg_base)
  iounmap(qdev->reg_base);
 if (qdev->doorbell_area)
  iounmap(qdev->doorbell_area);
 vfree(qdev->mpi_coredump);
 pci_release_regions(pdev);
}
