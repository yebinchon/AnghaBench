
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct idt_ntb_dev {int dummy; } ;


 int dev_info (int *,char*) ;
 int idt_deinit_dbgfs (struct idt_ntb_dev*) ;
 int idt_deinit_isr (struct idt_ntb_dev*) ;
 int idt_deinit_link (struct idt_ntb_dev*) ;
 int idt_deinit_pci (struct idt_ntb_dev*) ;
 int idt_unregister_device (struct idt_ntb_dev*) ;
 struct idt_ntb_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void idt_pci_remove(struct pci_dev *pdev)
{
 struct idt_ntb_dev *ndev = pci_get_drvdata(pdev);


 idt_deinit_dbgfs(ndev);


 idt_unregister_device(ndev);


 idt_deinit_isr(ndev);


 idt_deinit_link(ndev);


 idt_deinit_pci(ndev);


 dev_info(&pdev->dev, "IDT NTB device is removed");


}
