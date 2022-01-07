
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sli_intr; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {scalar_t__ intr_type; TYPE_2__ sli; int pcidev; } ;


 int LPFC_MSIX_VECTORS ;
 scalar_t__ MSIX ;
 scalar_t__ NONE ;
 int free_irq (int ,struct lpfc_hba*) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static void
lpfc_sli_disable_intr(struct lpfc_hba *phba)
{
 int nr_irqs, i;

 if (phba->intr_type == MSIX)
  nr_irqs = LPFC_MSIX_VECTORS;
 else
  nr_irqs = 1;

 for (i = 0; i < nr_irqs; i++)
  free_irq(pci_irq_vector(phba->pcidev, i), phba);
 pci_free_irq_vectors(phba->pcidev);


 phba->intr_type = NONE;
 phba->sli.slistat.sli_intr = 0;
}
