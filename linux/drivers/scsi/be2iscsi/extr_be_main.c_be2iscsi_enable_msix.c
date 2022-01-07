
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_affinity {int post_vectors; } ;
struct TYPE_2__ {int eqid_count; } ;
struct beiscsi_hba {int generation; int num_cpus; int pcidev; TYPE_1__ fw_config; } ;


 int BEISCSI_MAX_NUM_CPUS ;



 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_MSIX ;
 scalar_t__ enable_msix ;
 scalar_t__ pci_alloc_irq_vectors_affinity (int ,int,int,int,struct irq_affinity*) ;

__attribute__((used)) static void be2iscsi_enable_msix(struct beiscsi_hba *phba)
{
 int nvec = 1;

 switch (phba->generation) {
 case 130:
 case 129:
  nvec = BEISCSI_MAX_NUM_CPUS + 1;
  break;
 case 128:
  nvec = phba->fw_config.eqid_count;
  break;
 default:
  nvec = 2;
  break;
 }


 if (enable_msix && nvec > 1) {
  struct irq_affinity desc = { .post_vectors = 1 };

  if (pci_alloc_irq_vectors_affinity(phba->pcidev, 2, nvec,
    PCI_IRQ_MSIX | PCI_IRQ_AFFINITY, &desc) < 0) {
   phba->num_cpus = nvec - 1;
   return;
  }
 }

 phba->num_cpus = 1;
}
