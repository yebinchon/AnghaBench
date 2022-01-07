
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dev; } ;
struct pci_dev {int irq; } ;


 int devm_free_irq (int ,int ,struct rtw_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;

__attribute__((used)) static void rtw_pci_free_irq(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
 devm_free_irq(rtwdev->dev, pdev->irq, rtwdev);
 pci_free_irq_vectors(pdev);
}
