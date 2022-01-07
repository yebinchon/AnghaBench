
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int ufshcd_shutdown (struct ufs_hba*) ;

__attribute__((used)) static void tc_dwc_g210_pci_shutdown(struct pci_dev *pdev)
{
 ufshcd_shutdown((struct ufs_hba *)pci_get_drvdata(pdev));
}
