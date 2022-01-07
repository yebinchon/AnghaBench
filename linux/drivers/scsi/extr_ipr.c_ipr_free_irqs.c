
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int nvectors; int * hrrq; struct pci_dev* pdev; } ;


 int free_irq (int ,int *) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static void ipr_free_irqs(struct ipr_ioa_cfg *ioa_cfg)
{
 struct pci_dev *pdev = ioa_cfg->pdev;
 int i;

 for (i = 0; i < ioa_cfg->nvectors; i++)
  free_irq(pci_irq_vector(pdev, i), &ioa_cfg->hrrq[i]);
 pci_free_irq_vectors(pdev);
}
