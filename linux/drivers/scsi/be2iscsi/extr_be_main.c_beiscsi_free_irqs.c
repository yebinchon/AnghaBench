
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwi_context_memory {struct beiscsi_hba* be_eq; } ;
struct beiscsi_hba {int num_cpus; int * msi_name; TYPE_2__* pcidev; TYPE_1__* phwi_ctrlr; } ;
struct TYPE_4__ {scalar_t__ irq; int msix_enabled; } ;
struct TYPE_3__ {struct hwi_context_memory* phwi_ctxt; } ;


 int free_irq (scalar_t__,struct beiscsi_hba*) ;
 int kfree (int ) ;
 scalar_t__ pci_irq_vector (TYPE_2__*,int) ;

__attribute__((used)) static void beiscsi_free_irqs(struct beiscsi_hba *phba)
{
 struct hwi_context_memory *phwi_context;
 int i;

 if (!phba->pcidev->msix_enabled) {
  if (phba->pcidev->irq)
   free_irq(phba->pcidev->irq, phba);
  return;
 }

 phwi_context = phba->phwi_ctrlr->phwi_ctxt;
 for (i = 0; i <= phba->num_cpus; i++) {
  free_irq(pci_irq_vector(phba->pcidev, i),
    &phwi_context->be_eq[i]);
  kfree(phba->msi_name[i]);
 }
}
