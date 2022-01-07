
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct beiscsi_hba {int pcidev; scalar_t__ csr_va; } ;


 scalar_t__ SLIPORT_SEMAPHORE_OFFSET_BEx ;
 int SLIPORT_SEMAPHORE_OFFSET_SH ;
 int ioread32 (scalar_t__) ;
 scalar_t__ is_chip_be2_be3r (struct beiscsi_hba*) ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static u32 beiscsi_get_post_stage(struct beiscsi_hba *phba)
{
 u32 sem;

 if (is_chip_be2_be3r(phba))
  sem = ioread32(phba->csr_va + SLIPORT_SEMAPHORE_OFFSET_BEx);
 else
  pci_read_config_dword(phba->pcidev,
          SLIPORT_SEMAPHORE_OFFSET_SH, &sem);
 return sem;
}
