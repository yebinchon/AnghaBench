
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; scalar_t__ msix_enabled; } ;
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct beiscsi_hba* be_eq; } ;
struct beiscsi_hba {int num_cpus; char** msi_name; TYPE_1__* shost; struct hwi_controller* phwi_ctrlr; struct pci_dev* pcidev; } ;
struct TYPE_2__ {int host_no; } ;


 int BEISCSI_LOG_INIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KERN_ERR ;
 int be_isr ;
 int be_isr_mcc ;
 int be_isr_msix ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 int free_irq (int ,struct beiscsi_hba*) ;
 void* kasprintf (int ,char*,int ,...) ;
 int kfree (char*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int request_irq (int ,int ,int ,char*,struct beiscsi_hba*) ;

__attribute__((used)) static int beiscsi_init_irqs(struct beiscsi_hba *phba)
{
 struct pci_dev *pcidev = phba->pcidev;
 struct hwi_controller *phwi_ctrlr;
 struct hwi_context_memory *phwi_context;
 int ret, i, j;

 phwi_ctrlr = phba->phwi_ctrlr;
 phwi_context = phwi_ctrlr->phwi_ctxt;

 if (pcidev->msix_enabled) {
  for (i = 0; i < phba->num_cpus; i++) {
   phba->msi_name[i] = kasprintf(GFP_KERNEL,
            "beiscsi_%02x_%02x",
            phba->shost->host_no, i);
   if (!phba->msi_name[i]) {
    ret = -ENOMEM;
    goto free_msix_irqs;
   }

   ret = request_irq(pci_irq_vector(pcidev, i),
       be_isr_msix, 0, phba->msi_name[i],
       &phwi_context->be_eq[i]);
   if (ret) {
    beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
         "BM_%d : beiscsi_init_irqs-Failed to"
         "register msix for i = %d\n",
         i);
    kfree(phba->msi_name[i]);
    goto free_msix_irqs;
   }
  }
  phba->msi_name[i] = kasprintf(GFP_KERNEL, "beiscsi_mcc_%02x",
           phba->shost->host_no);
  if (!phba->msi_name[i]) {
   ret = -ENOMEM;
   goto free_msix_irqs;
  }
  ret = request_irq(pci_irq_vector(pcidev, i), be_isr_mcc, 0,
      phba->msi_name[i], &phwi_context->be_eq[i]);
  if (ret) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT ,
        "BM_%d : beiscsi_init_irqs-"
        "Failed to register beiscsi_msix_mcc\n");
   kfree(phba->msi_name[i]);
   goto free_msix_irqs;
  }

 } else {
  ret = request_irq(pcidev->irq, be_isr, IRQF_SHARED,
      "beiscsi", phba);
  if (ret) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BM_%d : beiscsi_init_irqs-"
        "Failed to register irq\\n");
   return ret;
  }
 }
 return 0;
free_msix_irqs:
 for (j = i - 1; j >= 0; j--) {
  free_irq(pci_irq_vector(pcidev, i), &phwi_context->be_eq[j]);
  kfree(phba->msi_name[j]);
 }
 return ret;
}
