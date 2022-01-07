
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_sli {int sli_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; int HCregaddr; struct lpfc_sli sli; } ;


 int HC_LAINT_ENA ;
 int LPFC_PROCESS_LA ;
 scalar_t__ LPFC_SLI_REV3 ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
lpfc_enable_la(struct lpfc_hba *phba)
{
 uint32_t control;
 struct lpfc_sli *psli = &phba->sli;
 spin_lock_irq(&phba->hbalock);
 psli->sli_flag |= LPFC_PROCESS_LA;
 if (phba->sli_rev <= LPFC_SLI_REV3) {
  control = readl(phba->HCregaddr);
  control |= HC_LAINT_ENA;
  writel(control, phba->HCregaddr);
  readl(phba->HCregaddr);
 }
 spin_unlock_irq(&phba->hbalock);
}
