
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct pmcraid_instance* pci_get_drvdata (struct pci_dev*) ;
 int pmcraid_reset_bringdown (struct pmcraid_instance*) ;

__attribute__((used)) static void pmcraid_shutdown(struct pci_dev *pdev)
{
 struct pmcraid_instance *pinstance = pci_get_drvdata(pdev);
 pmcraid_reset_bringdown(pinstance);
}
