
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mvumi_hba {int dummy; } ;


 int mvumi_flush_cache (struct mvumi_hba*) ;
 struct mvumi_hba* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void mvumi_shutdown(struct pci_dev *pdev)
{
 struct mvumi_hba *mhba = pci_get_drvdata(pdev);

 mvumi_flush_cache(mhba);
}
