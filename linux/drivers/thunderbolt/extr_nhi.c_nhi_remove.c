
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int dummy; } ;
struct tb {struct tb_nhi* nhi; } ;
struct pci_dev {int dev; } ;


 int nhi_shutdown (struct tb_nhi*) ;
 struct tb* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_sync (int *) ;
 int tb_domain_remove (struct tb*) ;

__attribute__((used)) static void nhi_remove(struct pci_dev *pdev)
{
 struct tb *tb = pci_get_drvdata(pdev);
 struct tb_nhi *nhi = tb->nhi;

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_forbid(&pdev->dev);

 tb_domain_remove(tb);
 nhi_shutdown(nhi);
}
