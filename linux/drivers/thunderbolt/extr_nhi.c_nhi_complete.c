
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;
struct pci_dev {int dev; } ;
struct device {int dummy; } ;


 struct tb* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_resume (int *) ;
 scalar_t__ pm_runtime_suspended (int *) ;
 int tb_domain_complete (struct tb*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void nhi_complete(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct tb *tb = pci_get_drvdata(pdev);






 if (pm_runtime_suspended(&pdev->dev))
  pm_runtime_resume(&pdev->dev);
 else
  tb_domain_complete(tb);
}
