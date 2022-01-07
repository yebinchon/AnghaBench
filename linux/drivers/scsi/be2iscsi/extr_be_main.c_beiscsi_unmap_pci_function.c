
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int * pci_va; int * db_va; int * csr_va; } ;


 int iounmap (int *) ;

__attribute__((used)) static void beiscsi_unmap_pci_function(struct beiscsi_hba *phba)
{
 if (phba->csr_va) {
  iounmap(phba->csr_va);
  phba->csr_va = ((void*)0);
 }
 if (phba->db_va) {
  iounmap(phba->db_va);
  phba->db_va = ((void*)0);
 }
 if (phba->pci_va) {
  iounmap(phba->pci_va);
  phba->pci_va = ((void*)0);
 }
}
