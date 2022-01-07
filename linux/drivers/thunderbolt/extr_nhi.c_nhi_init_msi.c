
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {struct pci_dev* pdev; int interrupt_work; int msix_ida; } ;
struct pci_dev {int dev; } ;


 int INIT_WORK (int *,int ) ;
 int IRQF_NO_SUSPEND ;
 int MSIX_MAX_VECS ;
 int MSIX_MIN_VECS ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int dev_err (int *,char*) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct tb_nhi*) ;
 int ida_init (int *) ;
 int nhi_disable_interrupts (struct tb_nhi*) ;
 int nhi_enable_int_throttling (struct tb_nhi*) ;
 int nhi_interrupt_work ;
 int nhi_msi ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_irq_vector (struct pci_dev*,int ) ;

__attribute__((used)) static int nhi_init_msi(struct tb_nhi *nhi)
{
 struct pci_dev *pdev = nhi->pdev;
 int res, irq, nvec;


 nhi_disable_interrupts(nhi);

 nhi_enable_int_throttling(nhi);

 ida_init(&nhi->msix_ida);







 nvec = pci_alloc_irq_vectors(pdev, MSIX_MIN_VECS, MSIX_MAX_VECS,
         PCI_IRQ_MSIX);
 if (nvec < 0) {
  nvec = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_MSI);
  if (nvec < 0)
   return nvec;

  INIT_WORK(&nhi->interrupt_work, nhi_interrupt_work);

  irq = pci_irq_vector(nhi->pdev, 0);
  if (irq < 0)
   return irq;

  res = devm_request_irq(&pdev->dev, irq, nhi_msi,
           IRQF_NO_SUSPEND, "thunderbolt", nhi);
  if (res) {
   dev_err(&pdev->dev, "request_irq failed, aborting\n");
   return res;
  }
 }

 return 0;
}
