
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct pci_dev {int dev; } ;


 struct ufs_hba* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int ufshcd_dealloc_host (struct ufs_hba*) ;
 int ufshcd_remove (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_pci_remove(struct pci_dev *pdev)
{
 struct ufs_hba *hba = pci_get_drvdata(pdev);

 pm_runtime_forbid(&pdev->dev);
 pm_runtime_get_noresume(&pdev->dev);
 ufshcd_remove(hba);
 ufshcd_dealloc_host(hba);
}
