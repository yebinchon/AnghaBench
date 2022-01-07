
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
 int dev_dbg (int *,char*) ;
 int devm_free_irq (int *,int ,struct idt_ntb_dev*) ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;

__attribute__((used)) static void idt_deinit_isr(struct idt_ntb_dev *ndev)
{
 struct pci_dev *pdev = ndev->ntb.pdev;
 u32 ntint_mask;


 ntint_mask = idt_nt_read(ndev, IDT_NT_NTINTMSK) | IDT_NTINTMSK_ALL;
 idt_nt_write(ndev, IDT_NT_NTINTMSK, ntint_mask);


 devm_free_irq(&pdev->dev, pci_irq_vector(pdev, 0), ndev);


 pci_free_irq_vectors(pdev);

 dev_dbg(&pdev->dev, "NTB interrupts deinitialized");
}
