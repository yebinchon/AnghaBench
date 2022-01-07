
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sli_intr; } ;
struct TYPE_8__ {TYPE_2__ slistat; } ;
struct TYPE_6__ {struct lpfc_hba* hba_eq_hdl; } ;
struct lpfc_hba {scalar_t__ intr_type; int cfg_irq_chann; TYPE_3__ sli; TYPE_4__* pcidev; TYPE_1__ sli4_hba; } ;
struct TYPE_9__ {int irq; } ;


 scalar_t__ MSIX ;
 scalar_t__ NONE ;
 int free_irq (int ,struct lpfc_hba*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int pci_free_irq_vectors (TYPE_4__*) ;
 int pci_irq_vector (TYPE_4__*,int) ;

__attribute__((used)) static void
lpfc_sli4_disable_intr(struct lpfc_hba *phba)
{

 if (phba->intr_type == MSIX) {
  int index;


  for (index = 0; index < phba->cfg_irq_chann; index++) {
   irq_set_affinity_hint(
    pci_irq_vector(phba->pcidev, index),
    ((void*)0));
   free_irq(pci_irq_vector(phba->pcidev, index),
     &phba->sli4_hba.hba_eq_hdl[index]);
  }
 } else {
  free_irq(phba->pcidev->irq, phba);
 }

 pci_free_irq_vectors(phba->pcidev);


 phba->intr_type = NONE;
 phba->sli.slistat.sli_intr = 0;
}
