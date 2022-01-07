
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dev; } ;
struct pci_dev {int irq; } ;


 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 unsigned int PCI_IRQ_LEGACY ;
 unsigned int PCI_IRQ_MSI ;
 int devm_request_threaded_irq (int ,int ,int ,int ,int ,int ,struct rtw_dev*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,unsigned int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int rtw_disable_msi ;
 int rtw_err (struct rtw_dev*,char*,...) ;
 int rtw_pci_interrupt_handler ;
 int rtw_pci_interrupt_threadfn ;

__attribute__((used)) static int rtw_pci_request_irq(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
 unsigned int flags = PCI_IRQ_LEGACY;
 int ret;

 if (!rtw_disable_msi)
  flags |= PCI_IRQ_MSI;

 ret = pci_alloc_irq_vectors(pdev, 1, 1, flags);
 if (ret < 0) {
  rtw_err(rtwdev, "failed to alloc PCI irq vectors\n");
  return ret;
 }

 ret = devm_request_threaded_irq(rtwdev->dev, pdev->irq,
     rtw_pci_interrupt_handler,
     rtw_pci_interrupt_threadfn,
     IRQF_SHARED, KBUILD_MODNAME, rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to request irq %d\n", ret);
  pci_free_irq_vectors(pdev);
 }

 return ret;
}
