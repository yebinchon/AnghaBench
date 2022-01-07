
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; } ;


 int dev_dbg (int *,char*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void idt_deinit_pci(struct idt_ntb_dev *ndev)
{
 struct pci_dev *pdev = ndev->ntb.pdev;


 pci_set_drvdata(pdev, ((void*)0));


 pci_clear_master(pdev);


 (void)pci_disable_pcie_error_reporting(pdev);

 dev_dbg(&pdev->dev, "NT-function PCIe interface cleared");
}
