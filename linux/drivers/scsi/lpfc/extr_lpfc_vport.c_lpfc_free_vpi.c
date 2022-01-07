
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vpi_used; } ;
struct TYPE_4__ {TYPE_1__ max_cfg_param; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; TYPE_2__ sli4_hba; int vpi_bmask; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 int clear_bit (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_free_vpi(struct lpfc_hba *phba, int vpi)
{
 if (vpi == 0)
  return;
 spin_lock_irq(&phba->hbalock);
 clear_bit(vpi, phba->vpi_bmask);
 if (phba->sli_rev == LPFC_SLI_REV4)
  phba->sli4_hba.max_cfg_param.vpi_used--;
 spin_unlock_irq(&phba->hbalock);
}
