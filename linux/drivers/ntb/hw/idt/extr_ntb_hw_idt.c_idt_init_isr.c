
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; } ;


 int IDT_NTINTMSK_ALL ;
 int IDT_NT_NTINTMSK ;
 int IRQF_ONESHOT ;
 int NTB_IRQNAME ;
 int PCI_IRQ_LEGACY ;
 int PCI_IRQ_MSI ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,int ,struct idt_ntb_dev*) ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int) ;
 int idt_thread_isr ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;

__attribute__((used)) static int idt_init_isr(struct idt_ntb_dev *ndev)
{
 struct pci_dev *pdev = ndev->ntb.pdev;
 u32 ntint_mask;
 int ret;


 ret = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_MSI | PCI_IRQ_LEGACY);
 if (ret != 1) {
  dev_err(&pdev->dev, "Failed to allocate IRQ vector");
  return ret;
 }


 ret = pci_irq_vector(pdev, 0);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to get IRQ vector");
  goto err_free_vectors;
 }


 ret = devm_request_threaded_irq(&pdev->dev, ret, ((void*)0), idt_thread_isr,
     IRQF_ONESHOT, NTB_IRQNAME, ndev);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to set MSI IRQ handler, %d", ret);
  goto err_free_vectors;
 }


 ntint_mask = idt_nt_read(ndev, IDT_NT_NTINTMSK) & ~IDT_NTINTMSK_ALL;
 idt_nt_write(ndev, IDT_NT_NTINTMSK, ntint_mask);


 dev_dbg(&pdev->dev, "NTB interrupts initialized");

 return 0;

err_free_vectors:
 pci_free_irq_vectors(pdev);

 return ret;
}
