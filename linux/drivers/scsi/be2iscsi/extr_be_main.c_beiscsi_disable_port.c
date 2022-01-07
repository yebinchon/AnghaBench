
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct be_eq_obj* be_eq; } ;
struct beiscsi_hba {unsigned int num_cpus; int boot_work; int eqd_update; int pcidev; struct hwi_controller* phwi_ctrlr; int state; } ;
struct be_eq_obj {int mcc_work; int iopoll; } ;


 int BEISCSI_HBA_ONLINE ;
 int beiscsi_cleanup_port (struct beiscsi_hba*) ;
 int beiscsi_free_irqs (struct beiscsi_hba*) ;
 scalar_t__ beiscsi_hba_in_error (struct beiscsi_hba*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int hwi_cleanup_port (struct beiscsi_hba*) ;
 int hwi_disable_intr (struct beiscsi_hba*) ;
 int irq_poll_disable (int *) ;
 int pci_free_irq_vectors (int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void beiscsi_disable_port(struct beiscsi_hba *phba, int unload)
{
 struct hwi_context_memory *phwi_context;
 struct hwi_controller *phwi_ctrlr;
 struct be_eq_obj *pbe_eq;
 unsigned int i;

 if (!test_and_clear_bit(BEISCSI_HBA_ONLINE, &phba->state))
  return;

 phwi_ctrlr = phba->phwi_ctrlr;
 phwi_context = phwi_ctrlr->phwi_ctxt;
 hwi_disable_intr(phba);
 beiscsi_free_irqs(phba);
 pci_free_irq_vectors(phba->pcidev);

 for (i = 0; i < phba->num_cpus; i++) {
  pbe_eq = &phwi_context->be_eq[i];
  irq_poll_disable(&pbe_eq->iopoll);
 }
 cancel_delayed_work_sync(&phba->eqd_update);
 cancel_work_sync(&phba->boot_work);

 if (!unload && beiscsi_hba_in_error(phba)) {
  pbe_eq = &phwi_context->be_eq[i];
  cancel_work_sync(&pbe_eq->mcc_work);
 }
 hwi_cleanup_port(phba);
 beiscsi_cleanup_port(phba);
}
